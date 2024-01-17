import hospitalService from "../services/hospitalService.js"

const fectchHospitalDetail = async( req,res)=>{
    try {
        
        const {hospitalId} = req.query;
        let numberValue = parseInt(hospitalId);
        if( typeof numberValue === 'number'){
            const response = await hospitalService.fetchHospitalDetail(req);
            if(response.data){
                res.status(200).json({message: 'data fetched successfully',error:null,data: response.data})
            }
            else{
                res.status(response.status).json({message: 'unable to fetch data',error:response.message,data: []})
            }
        }
        else{
            res.status(400).json({message: 'unable to fetch data',error:'please provide correct data',data: []})
        }
       
    } 
    catch (error) {
        res.status(500).json({message: 'unable to fetch data',error:error.message,data: []})

    }
}

export default fectchHospitalDetail;