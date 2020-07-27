 const express = require('express');
 const app = express();

//views
app.set('view engine', 'ejs');
// app.set('view', 'view');

//public folder
app.use(express.static('public'));

//routes
app.use(require('./routes/dishes'));
app.use(require('./routes/newdish'));

app.listen(3000, () => {
    console.log('listening on 3000');
})