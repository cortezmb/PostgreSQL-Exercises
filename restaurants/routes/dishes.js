
const express = require('express');
const router = express.Router();
const db = require('../models/database'); //database instance

//display all of the dishes
//have to go to database and make a query

router.get('/dishes', (req, res) => {

    db.query('SELECT * FROM Dishes')
    .then(results => {
        
        //pass results which is an array of objects in db to ejs file
        res.render('dishes', {
            dishes: results
        })
    })
    .catch(error => {
        res.send(error);
    })
})

module.exports = router;