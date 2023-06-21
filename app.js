const express = require('express');
const favicon = require('serve-favicon');
const bodyParser = require('body-parser');
const cors = require('cors');
const sequelize = require('./src/db/sequelize');
const app = express();
require('events').EventEmitter.defaultMaxListeners = 35;

const port=process.env.PORT || 3001;                
app.use(function (req, res, next) {
    //Enabling CORS
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Methods", "GET,HEAD,OPTIONS,POST,PUT");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type,Accept, x-client-key, x-client-token, x-client-secret, Authorization");
      next();
    });
app.use(favicon(__dirname + '/favicon.ico'));
app.use(bodyParser.json());
app
    .use(favicon(__dirname + "/favicon.ico"))
    .use(cors())

    .use(bodyParser.json());
    
app.set('view engine', 'ejs');
app.use('/upload',express.static(__dirname + '/upload'))
app.set('views', __dirname + '/views');
app.use('/publics',express.static(__dirname + '/publics'));

app.set('component', __dirname + '/component');
sequelize.initDB();
// sequelize.initclient();
// POINT DE TERMINAISON

app.get('/',(req, res)=>{
    res.send('Hello Hiruko');
})

//point de terminaison sur pour les admin
require("./src/routes/adminRouter/register")(app);
require("./src/routes/adminRouter/login")(app);

//point de terminaison sur pour les consomation
require("./src/routes/consomation/addconso")(app);
require("./src/routes/consomation/getConso")(app);

//point de terminaison sur pour les marque
require("./src/routes/marque/addmarque")(app);
require("./src/routes/marque/getMarque")(app);

//point de terminaison sur pour les Categories
require("./src/routes/categories/addCategories")(app);
require("./src/routes/categories/getCategories")(app);

//point de terminaison sur pour les typeVoiture
require("./src/routes/typeVoiture/addTypeVoiture")(app);
require("./src/routes/typeVoiture/getTypeVoiture")(app);




// points de terminaisons  pour les élèves               
require("./src/routes/studentRouter/findAllStudent")(app);
require("./src/routes/studentRouter/findOneStudent")(app);
require("./src/routes/studentRouter/createStudent")(app);
require("./src/routes/studentRouter/updateStudent")(app);
require("./src/routes/studentRouter/deleteStudent")(app);
require("./src/routes/studentRouter/findstudentByschool")(app);


// points de terminaisons  pour utilisateurs  

require("./src/routes/userRouter/login")(app);
require("./src/routes/userRouter/register")(app);
require("./src/routes/userRouter/findAllUser")(app);
require("./src/routes/userRouter/findOneUser")(app);
require("./src/routes/userRouter/updateUser")(app);
require("./src/routes/userRouter/deleteUser")(app);

// points de terminaisons  pour les écoles

require("./src/routes/schoolRouter/createSchool")(app);
require("./src/routes/schoolRouter/findAllSchool")(app);
require("./src/routes/schoolRouter/findOneSchool")(app);
require("./src/routes/schoolRouter/updateSchool")(app);
require("./src/routes/schoolRouter/deleteSchool")(app);

// points de terminaisons  pour les payments 

require("./src/routes/payRouter/createPayFrom")(app);   
require("./src/routes/payRouter/findAllPay")(app);
require("./src/routes/payRouter/findOnePay")(app);
require("./src/routes/payRouter/updatePay")(app);
require("./src/routes/payRouter/deletePay")(app);


// Ajoute le gestion d'erreur 404
app.use(({res})=> {
    const message = "Impossible de trouver la ressource! vous pouvez essayer un autre URL"
    res.status(404).json(message);
});
// definitin de 
app.listen(port, () => {console.log('listening on port'+port+'lien du serveur http://localhost:'+port)});