import { sequelize, DataTypes } from '../config/connect.js'
import { Post } from './posts.models.js'

// Comment model
const Comment = sequelize.define('Comment', {
  postId: { type: DataTypes.INTEGER, allowNull: false },
  id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    unique: true,
    primaryKey: true,
    autoIncrement: true
  },
  name: { type: DataTypes.STRING, allowNull: false },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    validate: { isEmail: true }
  },
  body: { type: DataTypes.TEXT, allowNull: false }
})

// Foreign key constraint between comments and posts
Post.hasMany(Comment, { foreignKey: 'postId' })
Comment.belongsTo(Post, { foreignKey: 'postId' })

export { Comment }
