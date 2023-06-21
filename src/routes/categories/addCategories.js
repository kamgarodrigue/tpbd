const { ValidationError } = require('sequelize');
const bcrypt = require('bcrypt');

const {categoriTable} = require("../../db/sequelize");
const marque = require('../../models/marque');


module.exports=(app) =>{
    app.post("/api/categories/add",(req,res)=>{
       
        categoriTable.create(req.body)
        .then(marque =>{
            const message="La categorie "+req.body.nom+" a bien été créé";
            res.status(200).json({message, data: marque});

        })
        .catch(err =>{
            if(err instanceof ValidationError){
                return res.status(400).json({message: err.message, data: err});

            }
            
            res.status(500).json({message: "Erreur lors de l'ajout d'un ecole! Reessayer plus tard",err})
          })
});

}