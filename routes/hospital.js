import express from 'express';
import fectchHospitalDetail from '../controllers/hospitalController.js'

const router = express.Router();

router.get('/detail',fectchHospitalDetail);


export default  router;