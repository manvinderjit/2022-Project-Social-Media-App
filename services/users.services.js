import { User } from '../models/users.models.js'

// Fetch all users data from database
const fetchUsers = async function (req, res, next) {
  try {
    const data = await User.findAll()
    if (data.length === 0) {
      return res.status(200).json('No user data') // Return this status, if file is empty
    } else {
      return res.status(200).json(data) // Else return the data
    }
  } catch (err) {
    console.error(err)
    next(err)
  }
}

// Gets the email associated with the userID from the Users table
const findEmailFromUserID = async function (userID) {
  try {
    const userEmail = await User.findOne({
      attributes: ['email'],
      where: { id: userID },
      plain: true
    })
    return userEmail.email
  } catch (err) {
    return err
  }
}

// Checks if user exists, returns null or userData
const checkIfUserExists = async function (uname) {
  const userData = await User.findOne({
    where: { username: uname },
    plain: true
  })
  if (userData == null) {
    return null
  } else {
    return userData
  }
}

export { fetchUsers, findEmailFromUserID, checkIfUserExists }
