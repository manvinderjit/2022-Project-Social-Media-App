import { Sequelize, DataTypes } from 'sequelize'
import { DB_NAME, DB_USER, DB_PASS, DB_HOST, DB_DIALECT } from './config.js'

const sequelize = new Sequelize(DB_NAME, DB_USER, DB_PASS, {
  host: DB_HOST,
  dialect: DB_DIALECT
})

// Authenticate database
const dbAuthenticate = async function () {
  try {
    await sequelize.authenticate()
  } catch (err) {
    console.error('Connection failed', err)
  }
}

// Synchronize database
const dbSynchronize = async function () {
  try {
    await sequelize.sync()
  } catch (err) {
    console.error('Unable to sync database')
  }
}

export { Sequelize, DataTypes, sequelize, dbAuthenticate, dbSynchronize }
