import pool from "../db/connect.js";
import util from "util";

// Convert pool.query to a promise-based function
const query = util.promisify(pool.query).bind(pool);

class hospitalService {

    async fetchHospitalDetail(req) {
        
        let { hospitalId } = req.query; //query params are normally string 
        hospitalId = Number(hospitalId);      
        const hospitalExist = await query(`select *  from hospitals where id='${hospitalId}'`);
        //if hospital with such id does not exists return
        if(hospitalExist.length === 0 ){
            return {message: 'please provide corret hospital id', status: 400,data: null}
        }      
        const fetchQuery = `
    WITH PsychiatristPatients AS (
      SELECT
        psy.id AS psychiatristId,
        psy.name AS psychiatristName,
        COUNT(pat.id) AS patientsCount
      FROM
        psychiatrists psy
      LEFT JOIN patients pat ON psy.id = pat.psychiatrist_id
      GROUP BY
        psy.id, psy.name
    )

    SELECT
      h.name AS hospitalName,
      COUNT(DISTINCT psy.id) AS totalPsychiatristCount,
      SUM(pp.patientsCount) AS totalPatientsCount,
      JSON_ARRAYAGG(
        JSON_OBJECT(
          'id', psy.id,
          'name', psy.name,
          'patientsCount', pp.patientsCount
        )
      ) AS psychiatristDetails
    FROM
      hospitals h
    LEFT JOIN psychiatrists psy ON h.id = psy.hospital_id
    LEFT JOIN PsychiatristPatients pp ON psy.id = pp.psychiatristId
    WHERE
      h.id = ${hospitalId}
    GROUP BY
      h.name;
  `;
    
        
        const response = await query(fetchQuery);
        return {message: 'data fetched successfully', status: 200,data: response}

    }
}

export default new hospitalService();