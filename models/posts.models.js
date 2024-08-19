import { sequelize, DataTypes } from '../config/connect.js'
// Post model
const Post = sequelize.define('Post', {
  userId: { type: DataTypes.INTEGER, allowNull: false },
  id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    unique: true,
    primaryKey: true,
    autoIncrement: true
  },
  title: DataTypes.STRING,
  body: DataTypes.TEXT
})

export { Post }
