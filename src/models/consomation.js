const consomation =(sequelize, DataTypes)=>{
    const Consomation= sequelize.define('consomation', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        nom: {
            type: DataTypes.STRING,
            allowNull: false
        },
        
        },
        {
            timestamps: true,
            createdAt:true,
            updateAt: 'updateTimestamp'


        }
        );
        Consomation.associate = function(models){
            Consomation.hasMany(models.voiture, {
                foreignKey: 'id_conso',
                sourceKey:'id'
            });
        }
        
        return Consomation;
}
module.exports = consomation;