import { Post } from '../models/posts.models.js'

// Fetches all posts by a User
const fetchPostsByUser = async function (req, res, next) {
  try {
    const postsData = await Post.findAll({
      attributes: ['id', 'userId', 'title', 'body', 'createdAt', 'updatedAt'],
      where: { userId: req.user.userID } // Gets the usersId of the logged-in user
    })
    if (postsData.length === 0) {
      return res.status(200).json('No posts by user') // Returns status if no posts for a user
    } else {
      return res.status(200).json(postsData) // Else return the data
    }
  } catch (err) {
    console.error(err)
    next(err)
  }
}

// Fetches one post by a User
const fetchAPostByUser = async function (req, res, next) {
  try {
    const postData = await Post.findOne({
      attributes: ['id', 'userId', 'title', 'body', 'createdAt', 'updatedAt'],
      where: {
        id: req.params.id
      }
    })
    if (postData == null) {
      return res.status(200).json('Post Not Found') // Returns status if no post found
    } else {
      // Checks if the logged-in user owns the post
      if (postData['userId'] != req.user.userID) {        
        return res.status(403).json('Unauthorized Request') // If not, returns status
      }
    }
    return res.status(200).json(postData) // Else return the data
  } catch (err) {
    console.error(err)
    next(err)
  }
}

// Create a new Post
const addPost = async function (req, res, next) {
  try {
    // Checks if Data is provided or empty
    if (req.body.constructor === Object && Object.keys(req.body).length === 0) {
      return res.status(400).json('Empty Data, Post Not Created') // Returns status if no data provided
    } else {
      // Creates Post
      await Post.create({
        //id: nextID, // not necesssarily required because of autoincreement
        userId: req.user.userID,
        title: req.body.title,
        body: req.body.body
      })
      return res.status(201).json('Post Created') // Returns status if post created successfully
    }
  } catch (err) {
    console.error(err)
    next(err)
  }
}

// Update an existing post
const updatePost = async function (req, res, next) {
  try {
    // Check if the post exists
    if ((await checkIfPostExists(req.params.id)) === true) {
      // Check if logged-in user owns the post
      if (
        (await checkIfUserOwnsPost(req.params.id, req.user.userID)) === true
      ) {
        // Checks if no data provided
        if (
          req.body.constructor === Object &&
          Object.keys(req.body).length === 0
        ) {
          return res.status(400).json('Empty Data, Post Not Updated') // Returns status if no data provided
        }

        // Update post
        await Post.update(
          {
            title: req.body.title,
            body: req.body.body
          },
          {
            where: { id: req.params.id }
          }
        )
        return res.status(201).json('Post Updated') // Returns status if post updated successfully
      } else {
        return res.status(403).json('Unauthorized request') // Returns status if user does not own post
      }
    } else {
      return res.status(404).json('Post does not exists') // Returns status if post does not exist
    }
  } catch (err) {
    console.error(err)
    next(err)
  }
}

// Check if a post exists, returns true or false
const checkIfPostExists = async function (postId) {
  const postData = await Post.findOne({
    attributes: ['id'],
    where: { id: postId }
  })
  if (postData == null) {
    return false
  } else {
    return true
  }
}

// Checks if a user owns a post, returns true or false
const checkIfUserOwnsPost = async function (postId, userId) {
  const dataObject = await Post.findOne({
    attributes: ['userId'],
    where: { id: postId }
  })
  if (dataObject['userId'] === userId) {
    return true
  } else {
    return false
  }
}

export {
  fetchPostsByUser,
  fetchAPostByUser,
  addPost,
  updatePost,
  checkIfPostExists
}
