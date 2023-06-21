const marque =(sequelize, DataTypes)=>{
    const Marque= sequelize.define('marque', {
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
        Marque.associate = function(models){
            Marque.hasMany(models.voiture, {
                foreignKey: 'id_marque',
                sourceKey:'id'
            });
        }
        return Marque;
}
module.exports = marque;