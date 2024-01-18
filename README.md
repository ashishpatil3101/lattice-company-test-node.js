# Laticetest API


## Major Libraries/Frameworks Used
- **Express.js:** A minimal and flexible Node.js web application framework.
- **dotenv:** Loads environment variables from a `.env` file.
- **express-validator:** A set of Express.js middlewares that wraps validator.js validator and sanitizer functions.
- **mysql2:** A MySQL client for Node.js with a focus on performance.
- **multer:** For file upload. Currently uploading on the server and storing a unique URL in MySQL.
- **bcrypt:** For password hashing. Uses salt to hash the password.

## API Endpoints
# Base URL - localhost:{port}

### 1. Fetch Hospital Detail
- **Endpoint:** `/hospitals/detail`
- **Method:** GET
- **Description:** Fetch details of a particular hospital.
- **Request Params:** In query params `{hospitalId}`
- please refere this image for better understanding the url ,params
![getHospitaldataPostman](https://github.com/ashishpatil3101/lattice-company-test-node.js/assets/43375060/85f90b10-ea9b-4446-a7c3-52198f9f183e)




### 2. Register Patient
- **Endpoint:** `/patients/register-patient`
- **Method:** POST
- **Description:** Register a new patient.
- **Request Params:** In form data, include the following:
  - `email`: "ashpatil@gmail.com"
  - `phone`: "+23456789000"
  - `password`: "Password1ssds"
  - `address`: "vsvsvsvsvsvsvsvsvsvsvsv"
  - `name`: "vaibhav"
  - `photo`: (Upload the patient's photo as a file in the form data)
  - please refere this image for better understanding the url ,params
![registerpatientPostman](https://github.com/ashishpatil3101/lattice-company-test-node.js/assets/43375060/10e0ad0c-107f-4233-bc88-43eb03eb2a90)


## Postman
[Link to Postman Collection](https://api.postman.com/collections/26007384-8e69e2be-a9f2-405d-84d9-3eff126ab302?access_key=PMAT-01HMC4QKNYB1BA16HB0XE15S3J)

## How to Run
1. clone this project on your local machine
2. Install dependencies: `npm install`
3. Execute content from `database/dump_file.sql` in the MySQL database.
4. Create a `.env` file with necessary environment variables.
   - **ENV File Variables:**
     - `PORT=4000`
   - **MySQL Environment Values:**
     - `DB_HOST=127.0.0.1` (or change according to your setup)
     - `DB_DATABASE=lattice`
     - `DB_USERNAME=your_mysql_username`
     - `DB_PASSWORD=your_mysql_password`
     - `DB_PORT=3306` (or change according to your setup)
5. Run the application: `npm start`.
