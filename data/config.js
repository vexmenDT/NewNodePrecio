const mysql = require('mysql');

// Set database connection credentials
const config = {
    host: '127.0.0.1',
    port: '33065',
    user: 'root',
    password: '',
    database: 'unidadPrecios',
};

// Create a MySQL pool
const pool = mysql.createPool(config);

// Export the pool
module.exports = pool;