import express from 'express';
import registerPatient from '../controllers/patientController.js'
import validatePatient from '../middlewares/validatePatientData.js'
const router = express.Router();

router.post('/register-patient',validatePatient,registerPatient);


export default  router;