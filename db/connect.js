import dotenv from "dotenv";
dotenv.config();
import mysql from 'mysql2';

let pool  = mysql.createPool({
  host:process.env.DB_HOST,
  database:process.env.DB_DATABASE,
  user:process.env.DB_USERNAME,
  password:process.env.DB_PASSWORD,
  port:process.env.DB_PORT,
  waitForConnections: true,
  connectionLimit: 10,
  maxIdle: 10, // max idle connections, the default value is the same as `connectionLimit`
  idleTimeout: 60000, // idle connections timeout, in milliseconds, the default value 60000
  queueLimit: 0,
  enableKeepAlive: true,
  keepAliveInitialDelay: 0
});

pool.on('connection', function (connection) {
  console.log('MySQL DB Connection established');
});

pool.on('enqueue', function () {
  console.log('Waiting for available connection slot...');
});


export default pool;