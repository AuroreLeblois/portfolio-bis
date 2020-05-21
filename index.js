const dotenv = require('dotenv');
const express = require('express');
const morgan = require('morgan');
const session = require('express-session');
var bodyParser = require('body-parser');
dotenv.config();

const PORT = process.env.PORT || 1234;
const router = require('./app/router');


const app = express();

app.set('view engine', 'ejs');
app.set('views', 'app/views');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(__dirname + '/public/'));
app.use(express.urlencoded({extended: true}))
app.use( session( {
  secret: "Je suis Bifrost",
  resave: true,
  saveUninitialized: true,
  cookie: {
    secure: false,
    maxAge: (1000*60*60), // une heure !
  }
}));

app.use(morgan('combined'));
app.use(router);

  app.listen(PORT, () => {
    console.log(`Listening on ${PORT}`);
  });
