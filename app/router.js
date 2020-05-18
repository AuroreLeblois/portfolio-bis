//on require les modules nécessaires
const express = require('express');
const router = express.Router();

const mainController = require('./controllers/mainController');


//routes principales
router.get('/', mainController.homePage);
router.get('/cv', mainController.cvPage);
router.get('/realisation', mainController.reaPage);
router.get('/contact', mainController.formConstact)




//on exporte les routes
module.exports = router;