import { express } from '../server.js'
import { fetchUsers } from '../services/users.services.js'
const userRouter = express.Router()

// Fetch all users
userRouter.get('/', fetchUsers)

export { userRouter }
