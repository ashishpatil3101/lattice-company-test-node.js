# Laticetest API

## Description
This is the API for the Laticetest project.

## Major Libraries/Frameworks Used
- **Express.js:** A minimal and flexible Node.js web application framework.
- **dotenv:** Loads environment variables from a `.env` file.
- **express-validator:** A set of Express.js middlewares that wraps validator.js validator and sanitizer functions.
- **mysql2:** A MySQL client for Node.js with focus on performance.
- **multer** for file upload .currently uploading on server and storing unique url in mysq.
- **bcrypt** for password hashing .uses salt to hash the password

## API Endpoints
#base url - localhost:{port}
### 1. Fetch Hospital Detail
- **Endpoint:** `/hospitals/detail`
- **Method:** GET
- **Description:** Fetch details of partiular hospital.
- **request params**: in query params {hospitalId}


### 2. Register Patient
- **Endpoint:** `/patients/register-patient`
- **Method:** POST
- **Description:** Register a new patient.
- ***request params**: in json body {
    "email": "ashpatil@gmail.com",
    "phone":"+23456789000",
    "password": "Password1ssds",
    "address": "vsvsvsvsvsvsvsvsvsvsvsv",
    "photo_url": "ciusbcsvnc.jpg",
    "name": "vaibhav"

}

## Postman
[Link to Postman](<https://api.postman.com/collections/26007384-8e69e2be-a9f2-405d-84d9-3eff126ab302?access_key=PMAT-01HMC4QKNYB1BA16HB0XE15S3J>)

## How to Run
1. Install dependencies: `npm install`
2. Create a `.env` file with necessary environment variables.
 -env file varibles 
 -PORT=4000
 -#mysql env values
 -DB_HOST=127.0.0.1 or change according to you if its not same for you
 -DB_DATABASE=lattice
 -DB_USERNAME=
 -DB_PASSWORD=
 -DB_PORT=3306 or change according to you if its not same for you
3. Run the application: `npm start`

