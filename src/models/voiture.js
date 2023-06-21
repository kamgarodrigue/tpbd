



const voiture =(sequelize, DataTypes,categoriTable,consomation,marque,typeVoiture,admin)=>{
    const Voiture= sequelize.define('voiture', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        description: {
            type: DataTypes.STRING,
            allowNull: false
        },
        nom: {
            type: DataTypes.STRING,
            unique: {
                msg:"l'nom est déjà utilisé"
            },
            allowNull: false
        },
        photo: {
            type: DataTypes.STRING,
           
        },
        
        },
        {
            timestamps: true,
            createdAt:true,
            updateAt: 'updateTimestamp'


        }
        );
       

        
        Voiture.belongsTo(admin,{foreingnkey:'admin_id',targetKey:'id',type:DataTypes.INTEGER})

        Voiture.belongsTo(categoriTable,{foreingnkey:'categori_id',targetKey:'id',type:DataTypes.INTEGER})
             Voiture.belongsTo(consomation,{foreingnkey:'conso_id',targetKey:'id',type:DataTypes.INTEGER})
        Voiture.belongsTo(marque,{foreingnkey:'marque_id',targetKey:'id',type:DataTypes.INTEGER})
        Voiture.belongsTo(typeVoiture,{foreingnkey:'typeVoiture_id',targetKey:'id',type:DataTypes.INTEGER})

        return Voiture;
}
module.exports = voiture;