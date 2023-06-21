const { ValidationError } = require('sequelize');


const {voitureTable} = require("../../db/sequelize");
const upload =require("../../middleware/uploadvoiture")


module.exports = (app)=>{
    app.put("/api/voiture/update/:id",upload.single('photo'),(req,res)=>{
        const id = req.params.id;
        if(req.file){
            // console.log(req.file.path);
            req.body.photo = req.file.path
         }
        voitureTable.update(req.body,{
            where:{ id:id}
        })
        .then(()=>{
            return voitureTable.findByPk(id)
            .then((voiture)=>{
                if(voiture===null){
                    const message= "L'ecole demande m'existe pas";
                    return res.status(404).json({message});
                }
                const message="voiture"+voiture.name+" updated successfully";
                res.status(200).json({message, data:voiture});
            })
        })
        .catch(err =>{
            if(err instanceof ValidationError){
               return res.status(400).json({message: err.message, data: err});
            }
            res.status(500).json({message: "Erreur lors de la modification! Reessayer plus tard",err})
          })
    })
}