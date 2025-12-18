const { Sequelize } = require('sequelize');

// Formato: 'postgres://usuario:contraseña@localhost:5432/nombre_base_datos'
const sequelize = new Sequelize('postgres://postgres:tu_contraseña@localhost:5432/registro_db', {
    dialect: 'postgres'
});

module.exports = sequelize;