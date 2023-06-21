const { ValidationError } = require('sequelize');
const bcrypt = require('bcrypt');
const {adminTable}= require("../../db/sequelize");
const admin = require('../../models/admin');
const upload =require("../../middleware/uploadvoiture")
module.exports=(app) =>{
    app.post("/api/admin/register",upload.single('photo'),(req,res)=>{
        const {nom,email,password} = req.body;
        if(!nom ||!email ||!password){
            return res.status(400).json({
                message:"Entrer le nom, l'email et le role, le mot de passe"
            });
        }
        
        const hash = bcrypt.hashSync(password,10);
        const newadmin = {
            nom,
            email,
            photo:"",
            password:hash
        };
        if(req.file){
           // console.log(req.file.path);
            newadmin.photo = req.file.path
        }else{
            newadmin.photo = ""
        }
        adminTable.create(newadmin)
        .then(admin =>{
            
            const message=" l admin "+req.body.nom+" a bien été créé";
            res.status(200).json({message, data: admin});

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