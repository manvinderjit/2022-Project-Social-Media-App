import { express } from '../server.js'
import {
  fetchComments,
  addComment,
  updateComment,
  deleteComment
} from '../services/comments.services.js'

const commentsRouter = express.Router({ mergeParams: true })

// Fetch all comments on a post
commentsRouter.get('/', fetchComments)

// Add a comment to a post
commentsRouter.post('/', addComment)

// Update a commment on a post
commentsRouter.patch('/:cId', updateComment)

// Delete a comment
commentsRouter.delete('/:cId', deleteComment)

export { commentsRouter }
