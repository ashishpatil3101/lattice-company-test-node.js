# Laticetest API

## Description
This is the API for the Laticetest project.

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
![Alt Text](https://drive.google.com/file/d/1EDxkDNbT1D6TQ9uhT4asRf5xvscDUurn/view?usp=sharing)

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
  ![Alt Text](https://drive.google.com/drive/folders/0B3ZaV4q_POnFfnU2VHZ6cDdoRDNPbHhrc21UaHE1VHNVblY2UldBN3BNQ3lDOXFiRkZyVUU?resourcekey=0-6Pz3sgjMNJdFq_qqyB_JTw&usp=sharing)

## Postman
[Link to Postman Collection](https://api.postman.com/collections/26007384-8e69e2be-a9f2-405d-84d9-3eff126ab302?access_key=PMAT-01HMC4QKNYB1BA16HB0XE15S3J)

## How to Run
1. Install dependencies: `npm install`
2. Execute content from `database/dump_file.sql` in the MySQL database.
3. Create a `.env` file with necessary environment variables.
   - **ENV File Variables:**
     - `PORT=4000`
   - **MySQL Environment Values:**
     - `DB_HOST=127.0.0.1` (or change according to your setup)
     - `DB_DATABASE=lattice`
     - `DB_USERNAME=your_mysql_username`
     - `DB_PASSWORD=your_mysql_password`
     - `DB_PORT=3306` (or change according to your setup)
4. Run the application: `npm start`.
