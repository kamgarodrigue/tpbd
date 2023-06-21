const categori =(sequelize, DataTypes)=>{
    const Categori= sequelize.define('categories', {
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
        Categori.associate = function(models){
            Categori.hasMany(models.voiture, {
                foreignKey: 'id_cat',
                sourceKey:'id'
            });
        }
        return Categori;
}
module.exports = categori;