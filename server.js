// Import dependencies
import express from 'express'
import { PORT, SECRET_KEY } from './config/config.js'
import { userRouter } from './controllers/users.routes.js'
import { loginRouter } from './controllers/login.routes.js'
import { postsRouter } from './controllers/posts.routes.js'
import { dbAuthenticate, dbSynchronize } from './config/connect.js'
import jwt from 'express-jwt'
import { authHandler } from './middleware/login.mw.js'
import { errorHandler } from './middleware/error.mw.js'

// Initialize express app
const app = express()

// Establishes database connection
try {
  if (dbAuthenticate()) {
    console.log('Database connection successful')
    dbSynchronize()
  }
} catch (err) {
  console.error(err)
}

app.use(
  jwt({ secret: SECRET_KEY, algorithms: ['HS256'] }).unless({
    path: [{ url: '/' }, { url: '/login' }, { url: '/users', methods: ['GET'] }]
  })
)

app.use(express.json())

app.use('/users', userRouter)

app.use('/login', loginRouter)

app.use('/posts', postsRouter)

app.get('/', (req, res) => {
  res.status(200).send('App is initialized at localhost:3000!')
})

// Uses an error middleware to catch the invalid jwt errors
app.use(authHandler)

// Global error middleware
app.use('*', errorHandler)

app.listen(PORT || 3000, () => {
  console.log(`App listening at http://localhost:${PORT}`)
})

export { app, express }
