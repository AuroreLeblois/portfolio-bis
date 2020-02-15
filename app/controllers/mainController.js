const mainController = {
  homePage: (req, res) => {
      res.render('index')
    },
  cvPage: (req, res)=>{
    res.render('cv')
  },
  reaPage:(req, res)=>{
    res.render('realisation')
  }
}

module.exports = mainController;