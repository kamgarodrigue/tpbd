const {voitureTable, categoriTable, typeVoitureTable, consoTable, marqueTable}= require("../../db/sequelize");
const {Op,Sequelize} = require('sequelize');


module.exports = (app)=>{
  app.get("/api/voiture/all/", (req ,res)=>{
   
  
    voitureTable.findAll({
        include:[categoriTable,typeVoitureTable,consoTable,marqueTable]
    })
      .then(async voiture =>{
        const [categori, typeVoiture, consomation,marque] = await Promise.all([
          categoriTable.findAll(),
          typeVoitureTable.findAll(),consoTable.findAll(),marqueTable.findAll()
      ]);
        const message ="La liste a bien ete recuperer!"
     let  data={user:req.session.user,voiture,categori, typeVoiture, consomation,marque}
     console.log(data)
        res.render('homePage',data);
       // res.status(200).json({message,data: voiture})
       

      })
      .catch(err =>{
        console.log(err)
        res.status(500).json({message: "Erreur lors de la recuperation de la liste! Reessayer plus tard",err})
      })
    
})

}