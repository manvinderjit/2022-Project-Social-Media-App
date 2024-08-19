# Final Project

## Goal

The goal of this project is to build a scalable ExpressJS application that allows users to post and comment on posts.

## Endpoints

### Unit Tests

Unit tests have been specified for the following routes

1. GET /posts to fetch all posts by a sender
2. GET /posts/:id to fetch a single post made by a sender
3. GET /posts/:id/comments to fetch all comments about a post

Adding Data 4. POST /posts to create a new post 5. POST /posts/:id/comments to add a new comment to a post

Updating Data 6. PATCH /posts/:id to update a post 7. PATCH /posts/:id/comments to update a comment

Deleting Data 8. DELETE /posts/:id/comments to delete a comment

### End to End Tests

End to end tests have been specified for the following routes

1. GET /posts to fetch all posts by a sender
2. GET /posts/:id to fetch a single post made by a sender
3. GET /posts/:id/comments to fetch all comments about a post
4. POST /posts to create a new post
5. PATCH /posts/:id to update a post
6. DELETE /posts/:id/comments to delete a comment

## Instructions

## Prerequisites

Ensure that a database has been setup as explained in the `README-PROJECT.md` file

## Variable Declaration

All variables specified in the `posts.tests.js` file must be declared. It is located in the following location

```Javascript
    X:\..\CSBC-1030-Assignments\project\test> posts.test.js
```

Refer to the database and ensure that variables meet the specified conditions

## Execution

To execute the test, run the `npm initialize` (if not already run before) and `npm test` commands after navigating to the project folder

```Javascript
    X:\..\CSBC-1030-Assignments\project> npm test
```

To exit, use `ctrl+c` and then enter `Y`, for returning to the commandline

### Note

All tests have been executed multiple times. Errors are caused by incorrect variable declaration.
