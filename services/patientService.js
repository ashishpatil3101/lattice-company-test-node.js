import pool from "../db/connect.js";
import util from "util";

// Convert pool.query to a promise-based function
const query = util.promisify(pool.query).bind(pool);

class patientService{

    async registerPatient(req){
          const {
            email,
            password,
            address,
            name,
            phone,
            photo_url
          }  = req.body;

          const insertQuery = `INSERT INTO patients ( name, address, email, phone, password, photo_url) VALUES
          ('${name}', '${address}', '${email}', '${phone}', '${password}', '${photo_url}');`;
          const response = await query(`${insertQuery}`);
          if( response.affectedRows != 0){
            return {data: response }
          }
          else{
            return {message : "server side error",data: null,status:500 }
          }

    }
}

export default new patientService();