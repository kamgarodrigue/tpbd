const {marqueTable} = require ("../../db/sequelize");
const {Op} = require('sequelize');


module.exports = (app)=>{
  app.get("/api/marque/all/", (req ,res)=>{
    if(req.query.nom){
      const name = req.query.nom;
      if(nom.length < 2){
        return res.status(400).json({error: "Name must be at least 2 characters long"});

      }

      return marqueTable.findAndCountAll(
        {where:{nom:{
          [Op.like]:'%'+nom+'%' }},
          order:['nom'],
           limit: 5
        })
      .then(({count, rows})=>{
        const message="Il ya au total "+ count + " ecole qui correspondent a la recherche  "+name;
        res.status(200).json({message , data:rows});
      })
      .catch(err=>{
        res.status(500).json({message:"La ressource recherche est introuvable",data:[]});
      })

    }
    else{
      marqueTable.findAll()
      .then(conso =>{
        const message ="La liste a bien ete recuperer!"
        res.status(200).json({message,data: conso})

      })
      .catch(err =>{
        res.status(500).json({message: "Erreur lors de la recuperation de la liste! Reessayer plus tard",err})
      })
    }
})

}