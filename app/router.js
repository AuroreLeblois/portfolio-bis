//on require les modules nécessaires
const express = require('express');
const router = express.Router();

const mainController = require('./controllers/mainController');


//routes principales
router.get('/', mainController.homePage);
router.get('/mon_cv', mainController.cvPage);
router.get('/realisation', mainController.reaPage);




//on exporte les routes
module.exports = router;