const { ValidationError } = require('sequelize');
const bcrypt = require('bcrypt');
const {voitureTable}= require("../../db/sequelize");
const voiture = require('../../models/voiture');
const upload =require("../../middleware/uploadvoiture")
module.exports=(app) =>{
    app.post("/api/voiture/register",upload.single('photo'),(req,res)=>{
        const {description,nom,categoryId,consomationId,typeVoitureId,adminId,marqueId,prix	} = req.body;
        if(!description||!nom||!categoryId||!consomationId||!typeVoitureId||!adminId || !marqueId || !prix){
            return res.status(400).json({
                message:"Entrer le nom, l'email et le role, le mot de passe"
            });
        }
        
        
        const voiture = {
            description,nom,categoryId,consomationId,typeVoitureId,adminId,marqueId,prix,
            photo:"",
            
        };
        if(req.file){
           // console.log(req.file.path);
            voiture.photo = req.file.path
        }else{
            voiture.photo = ""
        }
        voitureTable.create(voiture)
        .then(voiture =>{
            
            const message=" l voiture "+req.body.nom+" a bien été créé";
            res.status(200).json({message, data: voiture});

        })
        .catch(err =>{
            if(err){
                console.log(err)
                return res.status(400).json({message: err.message, data: err});

            }
            
            res.status(500).json({message: "Erreur lors de l'ajout d'un user! Reessayer plus tard",err})
          })
    });
}