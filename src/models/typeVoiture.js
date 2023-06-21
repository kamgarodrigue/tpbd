const typeVoiture =(sequelize, DataTypes)=>{
    const TypeVoiture= sequelize.define('typeVoiture', {
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
        TypeVoiture.associate = function(models){
            TypeVoiture.hasMany(models.voiture, {
                foreignKey: 'id_typeVoiture',
                sourceKey:'id'
            });
        }
        return TypeVoiture;
}
module.exports = typeVoiture;