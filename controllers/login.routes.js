import { express } from '../server.js'
import { loginUser } from '../services/login.services.js'

const loginRouter = express.Router()

// Allows user login
loginRouter.post('/', loginUser)

export { loginRouter }
