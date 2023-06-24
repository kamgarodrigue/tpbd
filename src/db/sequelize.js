const {Sequelize, DataTypes} =require('sequelize');
const bcrypt = require('bcrypt');

// importation des models



const adminModel = require("../models/admin");
const marqueModel = require("../models/marque");
const consomationModel = require("../models/consomation");
const catgoriModel= require("../models/categori");
const typeVoitureModel= require("../models/typeVoiture");
const voitureModel= require("../models/voiture");



// configuration de la base de donnees 
let sequelize;
if (process.env.NODE_ENV ===  'production') {
  sequelize = new Sequelize('q3km6gfiypm99yap','fmjzknms6lf6acih','mpe1lmb1jci8jwzx',{
    host:'ao9moanwus0rjiex.cbetxkdyhwsb.us-east-1.rds.amazonaws.com',
    dialect:'mariadb',
    dialectOptions:{
      timezone:'Etc/GMT-1'
    },
    logging:true
  })
}else{
   
// connection a la db en local
sequelize = new Sequelize('database_test', 'root', '', {
    host: 'localhost',
    dialect: 'mariadb',
    dialectOptions: {
      timezone: 'Etc/GMT-1',
    },
    logging: false,
    define:{
      maxKeys: 200
    }
  })

}

// creation des models



const adminTable= adminModel(sequelize, DataTypes);
const consoTable=consomationModel(sequelize, DataTypes);
const marqueTable=marqueModel(sequelize, DataTypes);
const categoriTable=catgoriModel(sequelize, DataTypes);
const typeVoitureTable=typeVoitureModel(sequelize, DataTypes);
 const voitureTable= voitureModel(sequelize, DataTypes,categoriTable,consoTable,marqueTable,typeVoitureTable,adminTable);
//association de la baase de donnees

 function initDB(){
  console.log("initialisation des tables de la base de donnees");
  return sequelize.sync({alter:true}) 

   
 }

module.exports = {   initDB,adminTable,consoTable,marqueTable,categoriTable,typeVoitureTable,voitureTable};




