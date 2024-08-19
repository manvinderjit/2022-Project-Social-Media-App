//Global Error Handler

const errorHandler = function (err, req, res, next) {
  if (!err.status) {
    err.status = 500 // Set default error status
  }
  next(err)
}

export { errorHandler }
