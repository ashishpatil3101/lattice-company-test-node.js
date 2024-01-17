import dotenv from "dotenv";
dotenv.config();
import express from 'express';
import patientRoute from './routes/patient.js'
import hospitalRoute from './routes/hospital.js'

const prepareAndRunServer = () => {
    const port = process.env.PORT
    const app = express();
    app.use(express.json());
    app.use(express.urlencoded({ extended: false }));
    
    // Introduce routes
    app.use('/patient', patientRoute);
    app.use('/hospital', hospitalRoute);

    // Global error handler middleware
    app.use((err, req, res, next) => {
        const errStatus = err.status || 500;
        const errMessage = err.message || "Something went wrong!!!";
        return res.status(500).json({
            message: errMessage,
            error: err,  // Corrected from 'error' to 'err'
            data: []
        });
    });

    app.listen(port, () => {
        console.log(`server listening on port ${port}`)
    })
}

prepareAndRunServer();
