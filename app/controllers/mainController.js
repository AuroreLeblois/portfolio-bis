const formation= require('../../data/ecole.json'); 
const experience= require('../../data/experiences.json');
const mainController = {
  
  homePage: (req, res) => {
      res.render('index')
    },
  cvPage: (req, res)=>{
    res.render('cv',{'ecole':formation, 'experience':experience})
  },
  reaPage:(req, res)=>{
    res.render('realisation')
  },
  formConstact:(req, res)=>{
    res.render('contact')
  },
  stylePage:(req,res)=>{
    res.render('/style.css')
  },
}

module.exports = mainController;