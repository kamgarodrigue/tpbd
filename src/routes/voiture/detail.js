const {voitureTable, categoriTable, typeVoitureTable, consoTable, marqueTable}= require("../../db/sequelize");
const {Op,Sequelize, json} = require('sequelize');


module.exports = (app)=>{
  app.get("/api/voiture/detail/:id", (req ,res)=>{
    if (!req.session.user) {

      return res.redirect('/');
    }
  
    voitureTable.findAll({
        include:[categoriTable,typeVoitureTable,consoTable,marqueTable],
        
    },
    {where:{id:req.params.id}
        
    })
      .then(async voitures =>{
        const [categori, typeVoiture, consomation,marque] = await Promise.all([
          categoriTable.findAll(),
          typeVoitureTable.findAll(),consoTable.findAll(),marqueTable.findAll()
      ]);
        const message ="La liste a bien ete recuperer!"
     let  voiture= voitures.filter(function(item) {
      
          return item.id == req.params.id})[0].dataValues;
          console.log(voiture.category.dataValues.nom);
     let  data={user:req.session.user,voiture,categori, typeVoiture, consomation,marque}
   //  console.log(req.params.id)
     console.log(data)
        res.render('detail',data);
       // res.status(200).json({message,data: voiture})
       
 
      })
      .catch(err =>{
        console.log(err)
        res.status(500).json({message: "Erreur lors de la recuperation de la liste! Reessayer plus tard",err})
      })
    
})

}