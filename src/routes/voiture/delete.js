const {voitureTable} = require("../../db/sequelize");




module.exports = (app) =>{
    app.post("/api/delete/:id", (req, res) => {
        const id = req.params.id;
        voitureTable.findByPk(req.params.id)
        .then(users => {
            if(users===null){
                        const message= "la voiture demande n'existe pas";
                        return res.status(404).json({message});
            
                    }
            const userDeleted = users;
            return voitureTable.destroy({where: {id:id}})
            .then(_=>{
               
                const message = "La voiture "+userDeleted.nom+" a été supprimé";
                res.status(200).json({message, data:userDeleted});
            })
            })
            .catch(err => {
                res.status(500).json({message: " Erreur lors de la suppression de la voiture", data:err});
            });

        })
       


    }



    