import { Sequelize } from 'sequelize'
import brcypt from 'bcrypt'

import dotenv from 'dotenv'
dotenv.config()

const DB_NAME = process.env.DB_NAME
const DB_USER = process.env.DB_USER
const DB_PASS = process.env.DB_PASS
const DB_HOST = process.env.DB_HOST
const DB_DIALECT = process.env.DB_DIALECT

import { User } from '../../Project/models/users.models.js'
import { Post } from '../../Project/models/posts.models.js'
import { Comment } from '../../Project/models/comments.models.js'

import fs from 'fs/promises'

const sequelize = new Sequelize(DB_NAME, DB_USER, DB_PASS, {
  host: DB_HOST,
  dialect: DB_DIALECT
})

const dbCreateDatabase = async function () {
  console.log('create database executed')
  sequelize.query(`CREATE DATABASE IF NOT EXISTS ${DB_NAME}`)
}

const dbAuthenticate = async function () {
  try {
    await dbCreateDatabase()
    await sequelize.authenticate()
  } catch (err) {
    console.error('Connection failed', err)
  }
}

const dbSynchronize = async function () {
  try {
    console.log('sync executed')

    await sequelize.sync()
  } catch (err) {
    console.error('Unable to sync database')
  }
}

const dbSeedData = async function () {
  try {
    console.log('this executed')
    const userData = await readFile('./seedfiles/users.json')

    for (let user of userData) {
      User.sync().then(async function () {
        return User.create({
          name: user.name,
          username: user.username,
          email: user.email,
          password: user.password,
          password_hash: await createHash(user.password),
          phone: user.phone,
          website: user.website
        })
      })
    }

    const postData = await readFile('./seedfiles/posts.json')
    for (let post of postData) {
      Post.sync().then(function () {
        return Post.create({
          userId: post.userId,
          title: post.title,
          body: post.body
        })
      })
    }

    const commentData = await readFile('./seedfiles/comments.json')
    for (let comment of commentData) {
      Comment.sync().then(function () {
        return Comment.create({
          postId: comment.postId,
          name: comment.name,
          email: comment.email,
          body: comment.body
        })
      })
    }
  } catch (err) {
    console.error('Unable to sync database')
    console.error(err)
  }
}

const readFile = async function (path) {
  try {
    return JSON.parse(await fs.readFile(path))
  } catch (err) {
    console.error(err)
  }
}

const createHash = async function (password) {
  try {
    const hash = await brcypt.hash(password, 12)
    return hash
  } catch (err) {
    console.error(err)
  }
}

if (dbAuthenticate()) {
  dbSynchronize()
  console.log('Database connection successful')
}

await dbSeedData()
