import pool from "../db/connect.js";
import util from "util";
import bcrypt from "bcrypt";

// Convert pool.query to a promise-based function
const query = util.promisify(pool.query).bind(pool);

class patientService{

    async registerPatient(req){
          let {
            email,
            password,
            address,
            name,
            phone
          }  = req.body;

          const patientExistQuery = `select *  from patients where email='${email}'`;
          const existPatient = await query(`${patientExistQuery}`);
          if(existPatient.length !== 0){
            return {message : "patient with email id exist.pleasetry again with different email",data: null,status:400 }
          }

          const photo_url = req.file ? req.file.filename : null;
          password = await bcrypt.hashSync(password, 12);
          const insertQuery = `INSERT INTO patients ( name, address, email, phone, password, photo_url) VALUES
          ('${name}', '${address}', '${email}', '${phone}', '${password}', '${photo_url}');`;
          const response = await query(`${insertQuery}`);
          if( response.affectedRows != 0){
            return {data: {email,address,name,phone} }
          }
          else{
            return {message : "server side error",data: null,status:500 }
          }

    }
}

export default new patientService();