const { ValidationError } = require('sequelize');
const bcrypt = require('bcrypt');
const {adminTable}= require("../../db/sequelize");
const admin = require('../../models/admin');
const privatekey=require('../../auth/private_key');

module.exports=(app)=>{
    app.post('/api/admin/login',(req,res)=>{
        console.log(req.body);
        adminTable.findOne({where:{email:req.body.email}})
        .then(admin=>{
            if(!admin){
                const message="l'utilisateur demandé est inexistant";
                return res.status(404).json({message});
            }
            bcrypt.compare(req.body.password,admin.password)
            .then(isPasswordValid=>{
                if(!isPasswordValid){
                    const message="Le mot de passe est incorrect!";
                    return res.status(401).json({message});
                }
              /*  // JWT
                const token =jwt.sign(
                    {
                        clientsId:admin.id
                    },
                    privatekey,
                    {expiresIn:'1000h'}
                )*/
                req.session.user=admin;
                const message="L'utilisateur a ete connecte avec succes!";
                    return res.status(200).json({message, data:admin});
             })
        })
        .catch(err=>{
            console.log(err);
            const message="La connexion a echoue! réessayez dans quelques instants";
                    return res.status(500).json({message, data:err});
        })
    })
} 