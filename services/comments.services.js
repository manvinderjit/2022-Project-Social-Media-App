import { Comment } from '../models/comments.models.js'
import { findEmailFromUserID } from './users.services.js'
import { checkIfPostExists } from './posts.services.js'

// Fetches comments for a post based on conditions
const fetchComments = async function (req, res, next) {
  try {
    let commentsData

    if (req.query.userId !== undefined) {
      // If userId parameter is defined, fetches comments by a specific user on a particular post
      commentsData = await fetchAllCommentsByAUserOnAPost(
        req.params.id,
        req.query.userId
      )
    } else {
      // If no userId provided, fetches all comments on a specific post
      commentsData = await fetchAllCommentsForPost(req.params.id)
    }
    //  If no comments found, returns status
    if (commentsData.length === 0 || commentsData.length === undefined) {
      return res.status(404).json('No comments on post')
    } else {
      return res.status(200).json(commentsData) // Else return the data
    }
  } catch (err) {
    console.error(err)
    next(err)
  }
}

//  Fetches all comments for a post
const fetchAllCommentsForPost = async function (postID) {
  try {
    return await Comment.findAll({
      where: { postId: postID }
    })
  } catch (err) {
    return err
  }
}

// Fetches all comments made by a user on a particular post
const fetchAllCommentsByAUserOnAPost = async function (postID, userID) {
  try {
    // Fetches email from post ID
    const userEmail = await findEmailFromUserID(userID)

    // Fetches comments
    const userCommentsData = await Comment.findAll({
      where: { postId: postID, email: userEmail }
    })
    return userCommentsData
  } catch (err) {
    return err
  }
}

// Adds a new comment
const addComment = async function (req, res, next) {
  try {
    if (req.body.constructor === Object && Object.keys(req.body).length === 0) {
      return res.status(400).json('Empty Data, Comment not added!') // Returns status if no data provided
    } else {
      //Check if post exists
      if ((await checkIfPostExists(req.params.id)) === true) {
        await Comment.create({
          postId: req.params.id,
          //id : nextId, // Not required because autoincreemented
          name: req.body.name,
          email: req.body.email,
          body: req.body.body
        })
        return res.status(201).json('Comment Added Successfully to Post') // Returns status if comment added successfully
      } else {
        return res.status(400).json('Invalid Request, Post Not Found') // Returns status if post not found
      }
    }
  } catch (err) {
    console.error(err)
    next(err)
  }
}

// Update a comment
const updateComment = async function (req, res, next) {
  try {
    //checks if body is empty
    if (req.body.constructor === Object && Object.keys(req.body).length === 0) {
      return res.status(400).json('Empty Data, Comment not Updated!') // Returns status if no data provided
    } else {
      // check if comment exists
      if (
        (await checkIfCommentExists(req.params.cId, req.params.id)) === true
      ) {
        // Checks if a comment exists
        await Comment.update(
          {
            name: req.body.name,
            body: req.body.body
          },
          {
            where: { id: req.params.cId }
          }
        )
        return res.status(201).json('Comment Updated Successfully') // Returns status if comment updated successfully
      } else {
        return res.status(404).json('Comment does not exists') // Returns status if comment does not exist
      }
    }
  } catch (err) {
    console.error(err)
    next(err)
  }
}

// Delete a comment
const deleteComment = async function (req, res, next) {
  try {
    if ((await checkIfCommentExists(req.params.cId, req.params.id)) === true) {
      // Checks if a comment exists
      await Comment.destroy({
        where: { id: req.params.cId }
      })
      return res.status(201).json('Comment Deleted Successfully') // Returns status if comment deleted successfully
    } else {
      return res.status(404).json('Comment does not exists') // Returns status if comment does not exist
    }
  } catch (err) {
    console.error(err)
    next(err)
  }
}

// Check if a comment exists, returns true or false
const checkIfCommentExists = async function (commentId, postId) {
  const commentData = await Comment.findOne({
    attributes: ['id'],
    where: { id: commentId, postId: postId }
  })
  if (commentData == null) {
    return false
  } else {
    return true
  }
}

export { fetchComments, addComment, updateComment, deleteComment }
