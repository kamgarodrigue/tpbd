const { ValidationError } = require('sequelize');
const bcrypt = require('bcrypt');

const {typeVoitureTable} = require("../../db/sequelize");
const marque = require('../../models/marque');


module.exports=(app) =>{
    app.post("/api/typeVoiture/add",(req,res)=>{
       
        typeVoitureTable.create(req.body)
        .then(type =>{
            const message="Le type la voiture "+req.body.nom+" a bien été créé";
            res.status(200).json({message, data: type});

        })
        .catch(err =>{
            if(err instanceof ValidationError){
                return res.status(400).json({message: err.message, data: err});

            }
            
            res.status(500).json({message: "Erreur lors de l'ajout d'un ecole! Reessayer plus tard",err})
          })
});

}
