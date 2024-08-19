import { express } from '../server.js'
import {
  fetchPostsByUser,
  fetchAPostByUser,
  addPost,
  updatePost
} from '../services/posts.services.js'
import { commentsRouter } from './comments.routes.js'

const postsRouter = express.Router()

// Fetch all posts by a logged-in user
postsRouter.get('/', fetchPostsByUser)

// Add a new post
postsRouter.post('/', addPost)

// Update an existing post
postsRouter.patch('/:id', updatePost)

// Fetch a specific post by the logged-in user
postsRouter.get('/:id', fetchAPostByUser)

// For comments routes
postsRouter.use('/:id/comments', commentsRouter)

export { postsRouter }
