//display the for to enter in the new dishes

const express = require('express');
const router = express.Router();
const db = require('../models/database');
const bodyParser = require('body-parser');

router.use(bodyParser.urlencoded({extended: false}));//from documentation of bodyparser; req.body {name, description, price}

//this displays our form
router.get('/newdish', (req, res) => {

    db.query('SELECT * FROM categories')
    .then(results => {
        res.render('newdish', {
            categories: results
        });
    })
    .catch(error => {
        res.send(error);
    })
    
})

//grab information and inserts
router.post('/newdish', (req, res) => {

    //req.body
    let name = req.body.title; //form attribute names
    let category = parseInt(req.body.category);
    let foodDescription = req.body.description;
    let price = parseInt(req.body.price);
    let imageURL = req.body.imageURL;

    //take form data
    //insert the record inside of our database

    db.none(`INSERT INTO Dishes VALUES (DEFAULT, $1, $2, $3, $4, $5)`, [name, category, foodDescription, price, imageURL])

    res.send('post');
})

module.exports = router;