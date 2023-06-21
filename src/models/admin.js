const admin =(sequelize, DataTypes)=>{
    const Admin= sequelize.define('admin', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        nom: {
            type: DataTypes.STRING,
            allowNull: false
        },
        email: {
            type: DataTypes.STRING,
            unique: {
                msg:"l'email est déjà utilisé"
            },
            allowNull: false
        },
        photo: {
            type: DataTypes.STRING,
           
        },
        password: {
            type: DataTypes.STRING,
            allowNull: false,
            validate:{
                min:6
            }
        }
        },
        {
            timestamps: true,
            createdAt:true,
            updateAt: 'updateTimestamp'


        }
        );
        Admin.associate = function(models){
            Categori.hasMany(models.voiture, {
                foreignKey: 'admin_id',
                sourceKey:'id'
            });
        }
        return Admin;
}
module.exports = admin;