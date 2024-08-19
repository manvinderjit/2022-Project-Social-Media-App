import jwtSigner from 'jsonwebtoken'
import { SECRET_KEY } from '../config/config.js'
import brcypt from 'bcrypt'
import { checkIfUserExists } from './users.services.js'

// Logs user in
const loginUser = async function (req, res, next) {
  try {
    if (req.body.constructor === Object && Object.keys(req.body).length === 0) {
      return res.status(400).json('Empty Data') // Returns status if no data provided
    }
    const body = req.body
    const userData = await checkUserCred(body.username, body.password) // Check user credential
    if (userData != false && userData != 'notfound') {
      // this signs the token using the SECRET_KEY, and in addition sets the expiry time of the token
      const token = jwtSigner.sign(
        { userID: userData[0], username: userData[1] },
        SECRET_KEY,
        { expiresIn: '1h' }
      )
      return res.send({ token })
    } else if (userData === 'notfound') {
      return res.status(401).send({ error: 'user does not exists' }) // Returns response if user does not exist
    }

    // Otherwise send invalid credentials
    return res.status(401).send({ error: 'invalid credentials' })
  } catch (err) {
    console.error(err)
    next(err)
  }
}

// Checks user credentials
const checkUserCred = async function (uname, pword) {
  try {
    const userData = await checkIfUserExists(uname) // Checks if user exists
    if (userData == null) {
      return 'notfound' // Returns notfound if no user found
    } else {
      if ((await verifyPassword(pword, userData.password_hash)) === true) {
        return [userData.id, userData.name] // Returns user id and name if user found
      }
      return false // Returns false if invalid password
    }
  } catch (err) {
    console.error(err)
  }
}

// Verifies Password
const verifyPassword = async function (password, hash) {
  try {
    const match = await brcypt.compare(password, hash) // Compares password and password_hash
    return match
  } catch (err) {
    console.error(err)
  }
}

export { loginUser }
