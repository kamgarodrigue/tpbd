const { ValidationError } = require('sequelize');
const bcrypt = require('bcrypt');

const {consoTable} = require("../../db/sequelize");


module.exports=(app) =>{
    app.post("/api/consomation/add",(req,res)=>{
       
        consoTable.create(req.body)
        .then(conso =>{
            const message="La consomation "+req.body.nom+" a bien été créé";
            res.status(200).json({message, data: conso});

        })
        .catch(err =>{
            if(err instanceof ValidationError){
                return res.status(400).json({message: err.message, data: err});

            }
            
            res.status(500).json({message: "Erreur lors de l'ajout d'un ecole! Reessayer plus tard",err})
          })
});

}
