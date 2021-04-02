// Load the MySQL pool connection
const pool = require('../data/config');

// Route the app
const router = app => {
    app.get('/', (request, response) => {
        response.render('index.ejs');
        
        console.log('entrando');
    });
}

// Export the router
module.exports = router;
