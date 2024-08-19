// Authentication/Authorization Error Handler

const authHandler = function (err, req, res, next) {
  if (err.name === 'UnauthorizedError') {
    res.status(401).send('invalid token...')
  }
  next(err)
}

export { authHandler }
