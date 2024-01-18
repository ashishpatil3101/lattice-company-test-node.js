import express from 'express';
import registerPatient from '../controllers/patientController.js'
import validatePatient from '../middlewares/validatePatientData.js'
const router = express.Router();


import multer from 'multer';

// Set up multer storage
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, 'uploads/'); // Choose the folder where you want to store uploads
  },
  filename: function (req, file, cb) {
    cb(null, file.fieldname + '-' + Date.now() + '.jpg'); // Customize the filename as needed
  },
});

// Create a multer instance with the storage configuration
const upload = multer({ storage: storage });


router.post('/register-patient',upload.single('photo'),validatePatient,registerPatient);


export default  router;