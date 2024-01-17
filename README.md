# Laticetest API

## Description
This is the API for the Laticetest project.

## Major Libraries/Frameworks Used
- **Express.js:** A minimal and flexible Node.js web application framework.
- **dotenv:** Loads environment variables from a `.env` file.
- **express-validator:** A set of Express.js middlewares that wraps validator.js validator and sanitizer functions.
- **mysql2:** A MySQL client for Node.js with focus on performance.

## API Endpoints

### 1. Fetch Hospital Detail
- **Endpoint:** `/hospitals/detail`
- **Method:** GET
- **Description:** Fetch details of all hospitals.
- **Controller:** `fectchHospitalDetail` in `hospitalController.js`

### 2. Register Patient
- **Endpoint:** `/patients/register-patient`
- **Method:** POST
- **Description:** Register a new patient.
- **Controller:** `registerPatient` in `patientController.js`
- **Middleware:** `validatePatient` for validating patient data before registration.

## Postman/Swagger Link
[Link to Postman/Swagger Documentation](<provide link here>)

## How to Run
1. Install dependencies: `npm install`
2. Create a `.env` file with necessary environment variables.
3. Run the application: `npm start`

## License
This project is licensed under the ISC License - see the [LICENSE](LICENSE) file for details.
