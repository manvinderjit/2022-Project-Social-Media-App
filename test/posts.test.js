import { app } from '../server.js'
import request from 'supertest'
import chai from 'chai'

const expect = chai.expect

import {
  fetchPostsByUser,
  fetchAPostByUser,
  addPost,
  updatePost
} from '../services/posts.services.js'
import {
  fetchComments,
  addComment,
  updateComment,
  deleteComment
} from '../services/comments.services.js'

// Unit and end to end test parameters

// Token for a logged-in user that has posts
const token =''  

// Token for a logged-in user that has no posts (with id = 6, if using the seed database)
const tokenForNoPostUser = ''

const userId = 0 // id of a user that created the post with the postId below

const postId = 0 // id of a post owned by the user with userId declared above

const commentId = 0 // Should be a comment on the post declared in the postId above

const commentIdForDeletion = 0 // Comment id for deletion in unit tests, should be a comment on the post declared in the postId above
const commentIdForDeletionE2E = 0 // Comment id for deletion in end to end tests, should be a comment on the post declared in the postId above

const otherPostId = 0 // Should be a post that is not owned by the user with userId declared above

const noPostUserId = 0 // A user with no posts (with id = 6, if using the seed database)

const postWithNoComments = 0 // A post with no comments (value between 26 and 30, if using the seed database)

const nonExistingPostId = 999 // A post that does not exists in the database

const nonExistingCommentId = 999 // A comment that does not exists in the database

// Dummy data for creating and updating posts
let title = 'this is a dummy title for post'
let body = 'this is a dummy body for post'

// Dummy data for creating and updating comments
let commentName = 'this is a dummy name for comment'
let commentEmail = 'Lucio@annie.ca'
let commentBody = 'this is a dummy body for comment'

// Unit tests

// Unit test for 'GET /posts' to fetch all posts by a sender
describe('fetchPostsByUser', function () {
  let req, res, next

  beforeEach(function () {
    res = {
      varStatus: null,
      varJson: null,
      status: function (code) {
        this.varStatus = code
        return this
      },
      json: function (code) {
        this.varJson = code
        return this
      }
    }
    next = function () {}
  })

  // Should return all posts for the specified user
  it('Should return all posts for the specified user', async function () {
    req = {
      user: { userID: userId }
    }

    await fetchPostsByUser(req, res, next)
    expect(res.varStatus).to.eql(200)
    expect(res.varJson).to.not.eql('null')
  })

  // Should return appropriate message if no posts for the specified user
  it('Should return appropriate message if no posts for the specified user', async function () {
    req = {
      user: { userID: noPostUserId }
    }

    await fetchPostsByUser(req, res, next)
    expect(res.varStatus).to.eql(200)
    expect(res.varJson).to.eql('No posts by user')
  })
})

// Unit tests for 'GET /posts/:id' to fetch a single post made by a sender
describe('fetchAPostByUser', function () {
  let req, res, next

  beforeEach(function () {
    res = {
      varStatus: null,
      varJson: null,
      status: function (code) {
        this.varStatus = code
        return this
      },
      json: function (code) {
        this.varJson = code
        return this
      }
    }
    next = function () {}
  })

  // should return appropriate message if post not found
  it('should return appropriate message if post not found', async function () {
    req = {
      params: { id: nonExistingPostId },
      user: { userID: userId }
    }

    await fetchAPostByUser(req, res, next)
    expect(res.varStatus).to.eql(200)
    expect(res.varJson).to.eql('Post Not Found')
  })

  // should return appropriate error and message if a user does not owns the post
  it('should return appropriate error and message if a user does not owns the post', async function () {
    req = {
      params: { id: postId },
      user: { userID: noPostUserId }
    }

    await fetchAPostByUser(req, res, next)
    expect(res.varStatus).to.eql(403)
    expect(res.varJson).to.eql('Unauthorized Request')
  })

  // should return appropriate response if post found
  it('should return appropriate response if post found', async function () {
    req = {
      params: { id: postId },
      user: { userID: userId }
    }

    await fetchAPostByUser(req, res, next)
    expect(res.varStatus).to.eql(200)
    expect(res.varJson).to.not.eql('null')
  })
})

//Unit Tests for 'POST /posts' to create a new post
describe('addPost', function () {
  let req, res, next

  beforeEach(function () {
    res = {
      varStatus: null,
      varJson: null,
      status: function (code) {
        this.varStatus = code
        return this
      },
      json: function (code) {
        this.varJson = code
        return this
      }
    }
    next = function () {}
  })

  // should return appropriate response if no data provided
  it('should return appropriate response if no data provided', async function () {
    req = {
      body: {}
    }

    await addPost(req, res, next)
    expect(res.varStatus).to.eql(400)
    expect(res.varJson).to.eql('Empty Data, Post Not Created')
  })

  // should return appropriate response if post created successfully
  it('should return appropriate response if post created successfully', async function () {
    req = {
      body: { title: title, body: body },
      user: { userID: userId }
    }

    await addPost(req, res, next)
    expect(res.varStatus).to.eql(201)
    expect(res.varJson).to.eql('Post Created')
  })
})

//Unit tests for 'PATCH /posts/:id' to update a post
describe('updatePost', function () {
  let req, res, next

  beforeEach(function () {
    res = {
      varStatus: null,
      varJson: null,
      status: function (code) {
        this.varStatus = code
        return this
      },
      json: function (code) {
        this.varJson = code
        return this
      }
    }
    next = function () {}
  })

  // should return appropriate response code if post does not exists
  it('should return appropriate response code if post does not exists', async function () {
    req = {
      params: { id: nonExistingPostId },
      user: { userID: userId },
      body: { title: title, body: body }
    }

    await updatePost(req, res, next)
    expect(res.varStatus).to.eql(404)
    expect(res.varJson).to.eql('Post does not exists')
  })

  // should return appropriate response code if logged-in user does not owns the post
  it('should return appropriate response code if logged-in user does not owns the post', async function () {
    req = {
      params: { id: otherPostId },
      user: { userID: userId },
      body: { title: title, body: body }
    }

    await updatePost(req, res, next)
    expect(res.varStatus).to.eql(403)
    expect(res.varJson).to.eql('Unauthorized request')
  })

  // should return appropriate message and response code if no data supplied in body
  it('should return appropriate message and response code if no data supplied in body', async function () {
    req = {
      params: { id: postId },
      user: { userID: userId },
      body: { title: title, body: body }
    }

    await updatePost(req, res, next)
    expect(res.varStatus).to.eql(201)
    expect(res.varJson).to.eql('Post Updated')
  })

  // should be able to update a post and return appropriate message and response code
  it('should be able to update a post and return appropriate message and response code', async function () {
    req = {
      params: { id: postId },
      user: { userID: userId },
      body: {}
    }

    await updatePost(req, res, next)
    expect(res.varStatus).to.eql(400)
    expect(res.varJson).to.eql('Empty Data, Post Not Updated')
  })
})

// Unit tests for comment routes

// Unit tests for 'GET /posts/:id/comments' to fetch all comments about a post
describe('fetchComments', function () {
  let req, res, next

  beforeEach(function () {
    res = {
      varStatus: null,
      varJson: null,
      status: function (code) {
        this.varStatus = code
        return this
      },
      json: function (code) {
        this.varJson = code
        return this
      }
    }
    next = function () {}
  })

  // should be able to fetch all comments for a specific post
  it('should be able to fetch all comments for a specific post', async function () {
    req = {
      params: { id: postId },
      query: {}
    }

    await fetchComments(req, res, next)
    expect(res.varStatus).to.eql(200)
    expect(res.varJson).to.not.eql('null')
  })

  // should be able to fetch all comments by a user for a specific post
  it('should be able to fetch all comments by a user for a specific post', async function () {
    req = {
      params: { id: postId },
      query: { userId: userId }
    }

    await fetchComments(req, res, next)
    expect(res.varStatus).to.eql(200)
    expect(res.varJson).to.not.eql('null')
  })

  // should return appropriate response if not comments on a post
  it('should return appropriate response if not comments on a post', async function () {
    req = {
      params: { id: postWithNoComments },
      query: { userId: userId }
    }

    await fetchComments(req, res, next)
    expect(res.varStatus).to.eql(404)
    expect(res.varJson).to.eql('No comments on post')
  })
})

// Unit tests for 'POST /posts/:id/comments to add a new comment to a post'
describe('addComments', function () {
  let req, res, next

  beforeEach(function () {
    res = {
      varStatus: null,
      varJson: null,
      status: function (code) {
        this.varStatus = code
        return this
      },
      json: function (code) {
        this.varJson = code
        return this
      }
    }
    next = function () {}
  })

  // should be able to add a comment to a post
  it('should be able to add a comment to a post', async function () {
    req = {
      params: { id: postId },
      body: { name: commentName, email: commentEmail, body: commentBody }
    }

    await addComment(req, res, next)
    expect(res.varStatus).to.eql(201)
    expect(res.varJson).to.eql('Comment Added Successfully to Post')
  })

  // should not be able to add comment to a non-existent post
  it('should not be able to add comment to a non-existent post', async function () {
    req = {
      params: { id: nonExistingPostId },
      body: { name: commentName, email: commentEmail, body: commentBody }
    }

    await addComment(req, res, next)
    expect(res.varStatus).to.eql(400)
    expect(res.varJson).to.eql('Invalid Request, Post Not Found')
  })

  // should return appropriate response if no data provided for comment
  it('should return appropriate response if no data provided for comment', async function () {
    req = {
      params: { id: postId },
      body: {}
    }

    await addComment(req, res, next)
    expect(res.varStatus).to.eql(400)
    expect(res.varJson).to.eql('Empty Data, Comment not added!')
  })
})

// Unit tests for 'PATCH /posts/:id/comments' to update a comment
describe('updateComment', function () {
  let req, res, next

  beforeEach(function () {
    res = {
      varStatus: null,
      varJson: null,
      status: function (code) {
        this.varStatus = code
        return this
      },
      json: function (code) {
        this.varJson = code
        return this
      }
    }
    next = function () {}
  })

  // should be able to update a comment
  it('should be able to update a comment', async function () {
    req = {
      params: { id: postId, cId: commentId },
      body: { name: commentName, body: commentBody }
    }

    await updateComment(req, res, next)
    expect(res.varStatus).to.eql(201)
    expect(res.varJson).to.eql('Comment Updated Successfully')
  })

  // should not be able to update a comment if it does not exists
  it('should not be able to update a comment if it does not exists', async function () {
    req = {
      params: { id: postId, cId: nonExistingCommentId },
      body: { name: commentName + ' edited', body: commentBody + ' edited ' }
    }

    await updateComment(req, res, next)
    expect(res.varStatus).to.eql(404)
    expect(res.varJson).to.eql('Comment does not exists')
  })

  // should return appropriate response if no data provided for updation
  it('should return appropriate response if no data provided for updation', async function () {
    req = {
      params: { id: postId, cId: commentId },
      body: {}
    }

    await updateComment(req, res, next)
    expect(res.varStatus).to.eql(400)
    expect(res.varJson).to.eql('Empty Data, Comment not Updated!')
  })
})

// Unit tests for 'DELETE /posts/:id/comments' to delete a comment
describe('deleteComment', function () {
  let req, res, next

  beforeEach(function () {
    res = {
      varStatus: null,
      varJson: null,
      status: function (code) {
        this.varStatus = code
        return this
      },
      json: function (code) {
        this.varJson = code
        return this
      }
    }
    next = function () {}
  })

  // should be able to delete a comment
  it('should be able to delete a comment', async function () {
    req = {
      params: { id: postId, cId: commentIdForDeletion }
    }

    await deleteComment(req, res, next)
    expect(res.varStatus).to.eql(201)
    expect(res.varJson).to.eql('Comment Deleted Successfully')
  })

  // should not be able to delete a comment if it does not exists
  it('should not be able to delete a comment if it does not exists', async function () {
    req = {
      params: { id: postId, cId: nonExistingCommentId }
    }

    await deleteComment(req, res, next)
    expect(res.varStatus).to.eql(404)
    expect(res.varJson).to.eql('Comment does not exists')
  })
})

// End to End tests

// End to End tests for the following routes
// 1. GET /posts to fetch all posts by a sender
// 2. GET /posts/:id to fetch a single post made by a sender
// 3. GET /posts/:id/comments to fetch all comments about a post
describe('GET /posts', function () {
  // Should not be able to retrieve an entity if not authenticated and return appropriate error code and message
  it('Should not be able to retrieve an entity if not authenticated', async function () {
    const response = await request(app).get(`/posts`)
    expect(response.status).to.eql(401)
    expect(response.error.text).to.eql('invalid token...')
  })

  // Should be able to retrieve logged-in users entities
  it('Should be able to retrieve logged-in users entities', async function () {
    const response = await request(app)
      .get(`/posts`)
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(200)
  })

  // Should return appropriate message if no posts for the logged-in user
  it('Should return appropriate message if no posts for the logged-in user', async function () {
    const response = await request(app)
      .get(`/posts`)
      .set('Authorization', `Bearer ` + tokenForNoPostUser)
    expect(response.status).to.eql(200)
    expect(response.body).to.eql('No posts by user')
  })

  // Should be able to retrieve a single entity from a logged-in user
  it('Should be able to retrieve a single entity from a logged-in user', async function () {
    const response = await request(app)
      .get(`/posts/${postId}`)
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(200)
  })

  // Should not be able to retrieve a single entity from another user
  it('Should not be able to retrieve a single entity from another user', async function () {
    const response = await request(app)
      .get(`/posts/${otherPostId}`)
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(403)
    expect(response.body).to.eql('Unauthorized Request')
  })

  // Should not be able to retrieve a non-existent entity and return appropriate message
  it('Should not be able to retrieve a a non-existent entity and return appropriate message', async function () {
    const response = await request(app)
      .get(`/posts/${nonExistingPostId}`)
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(200)
    expect(response.body).to.eql('Post Not Found')
  })

  // Should be able to retrieve all comments for a post
  it('Should be able to retrieve all comments for a post', async function () {
    const response = await request(app)
      .get(`/posts/${postId}/comments`)
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(200)
  })

  // Should not be able to retrieve all comments for a post
  it('Should not be able to retrieve all comments for a post', async function () {
    const response = await request(app)
      .get(`/posts/${postWithNoComments}/comments`)
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(404)
    expect(response.body).to.eql('No comments on post')
  })
})

// End to End tests for the following routes
// 1. POST /posts to create a new post
describe('POST /posts', function () {
  // Should be able to create a new post
  it('Should be able to create a new post', async function () {
    const response = await request(app)
      .post(`/posts`)
      .send({
        title: title,
        body: body
      })
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(201)
    expect(response.body).to.eql('Post Created')
  })

  // Should not be able to create a new post if empty data
  it('Should not be able to create a new post', async function () {
    const response = await request(app)
      .post(`/posts`)
      .send()
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(400)
    expect(response.body).to.eql('Empty Data, Post Not Created')
  })

  // Should not be able to create a new post if not authenticated, no bearer token
  it('Should be able to create a new post if not authenticated, no bearer token', async function () {
    const response = await request(app).post(`/posts`).send({
      title: title,
      body: body
    })
    expect(response.status).to.eql(401)
    expect(response.error.text).to.eql('invalid token...')
  })
})

// End to End tests for the following routes
// 1. PATCH /posts/:id to update a post
describe('PATCH /posts', function () {
  // Should be able to update a post if authenticated
  it('Should be able to update a post if authenticated', async function () {
    const response = await request(app)
      .patch(`/posts/${postId}`)
      .send({
        title: title,
        body: body
      })
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(201)
    expect(response.body).to.eql('Post Updated')
  })

  // Should not be able to update a post if not authenticated, no bearer token
  it('Should not be able to update a post', async function () {
    const response = await request(app).patch(`/posts/${postId}`).send({
      title: title,
      body: body
    })
    expect(response.status).to.eql(401)
    expect(response.error.text).to.eql('invalid token...')
  })

  // Should not be able to update another user post
  it('Should not be able to update another user post', async function () {
    const response = await request(app)
      .patch(`/posts/${otherPostId}`)
      .send({
        title: title,
        body: body
      })
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(403)
    expect(response.body).to.eql('Unauthorized request')
  })

  // Should not be able to update a non-existing post
  it('Should not be able to update a non-existing post', async function () {
    const response = await request(app)
      .patch(`/posts/${nonExistingPostId}`)
      .send({
        title: title,
        body: body
      })
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(404)
    expect(response.body).to.eql('Post does not exists')
  })

  // Should not be able to update post if body empty and return appropriate message
  it('Should not be able to update post if body empty and return appropriate message', async function () {
    const response = await request(app)
      .patch(`/posts/${postId}`)
      .send()
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(400)
    expect(response.body).to.eql('Empty Data, Post Not Updated')
  })
})

// End to End tests for the following routes
// 1. DELETE /posts/:id/comments to delete a comment
describe('DELETE posts/:id/comments:cid', function () {
  // Should be able to delete a comment if authenticated
  it('Should be able to delete a comment if authenticated', async function () {
    const response = await request(app)
      .delete(`/posts/${postId}/comments/${commentIdForDeletionE2E}`)
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(201)
    expect(response.body).to.eql('Comment Deleted Successfully')
  })

  // Should not be able to delete a comment if not authenticated, no bearer token
  it('Should not be able to delete a comment if not authenticated', async function () {
    const response = await request(app).delete(
      `/posts/${postId}/comments/${commentId}`
    )
    expect(response.status).to.eql(401)
    expect(response.error.text).to.eql('invalid token...')
  })

  // Should not be able to delete a comment if it does not exists
  it('Should not be able to delete a comment if it does not exists', async function () {
    const response = await request(app)
      .delete(`/posts/${postId}/comments/${nonExistingCommentId}`)
      .set('Authorization', `Bearer ` + token)
    expect(response.status).to.eql(404)
    expect(response.body).to.eql('Comment does not exists')
  })
})
