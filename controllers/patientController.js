import { error } from "console";
import patientService from "../services/patientService.js";

const registerPatient = async(req,res,next)=>{
    try {

        const response = await patientService.registerPatient(req);
        if( response.data ){
            res.status(201).json({message: "patient added successfully",error: null,data: response.data} );
       }
       else{
        res.status(500).json({message: "please try again later",error: response.message,data:[]} );
       }
        
    }
     catch (error) {
      const errObj = new Error();
      errObj.status = 500;
      errObj.message=error.message;
      next(error);

    }
}

export default registerPatient;