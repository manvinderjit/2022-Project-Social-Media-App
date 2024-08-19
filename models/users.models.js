// Database model for Users
import { sequelize, DataTypes } from '../config/connect.js'
//User model
const User = sequelize.define('User', {
  name: DataTypes.STRING,
  username: { type: DataTypes.STRING, allowNull: false, unique: true },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
    validate: { isEmail: true }
  },
  password: DataTypes.STRING,
  password_hash: DataTypes.STRING,
  phone: DataTypes.STRING,
  website: DataTypes.STRING
})

export { User }
