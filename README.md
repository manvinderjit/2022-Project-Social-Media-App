# Final Project

## Goal

The goal of this project is to build a scalable ExpressJS application that allows users to post and comment on posts.

## Instructions

It is a REST API ExpressJS application that is connected to a MySQL database via Sequelizer ORM.

## Instructions

## Prerequisites

Create a database in MySQL before running the application. The application interacts with a MySQL database using the Sequelizer ORM.
The ORM can create the tables automatically but not the database

Create a .env file based on the .env.sample file and define a value for the parameters specified

Sample data is available in the json files provided in the following folder

```Javascript
    :\..\samples\utils\seedfiles>
```

There are three JSON files:
i. `users.json` Has six users; user with id=6 will have no posts by default
ii. `posts.json` Has 30 posts, six per user; posts with id from 26 to 30 will have no comments by default
iii. `comments.json` Has 125 comments by default; five per post with postId from 1 to 25

### Seeding Data

A `MySql` file with the name `db_test3.sql` is provided that can be used to create a MySql database and tables and then populate them with data

### Alternatively: Seeding Data Using Script

A script is available in the `utils` folder in the file `seeddata.js`

```Javascript
    :\..\samples\utils>
```

It imports env variables from the `.env` file in the `samples\utils` folder and the models from the respective files in the `project\models` folder
The env variables in the `.env` file in the `samples\utils` will be the same as the ones in the `.env` file in the `project` folder

To add the data from the files into a database

Ensure:
a. That the variables are defined in the `.env` file
b. The database exists in MySQL
c. The tables `users`, `posts`, and `comments` `DO NOT Exist` in the database. Let sequelize ORM create them due to foreign key constraints
Then:
d. Run the following commands after navigating to the `utils` folder in the CLI

```Javascript
    X:\..\samples\utils> npm init
    X:\..\samples\utils> node seeddata.js
```

### Note

If there is a need to re-run the seeddata.js script, delete the `users`, `posts`, and `comments` tables beforehand to avoid errors due to foreign key constraints

## Execution

Once the database is setup, the application can be run

1. Ensure that a database has been created and the required env variables declared in the `.env` file

2. To run the app, run the following commands in the terminal after navigating to the project directory

```Javascript

    npm install

    npm start

```

Instead of `npm start`, `nodemon` can also be used for running the application

```Javascript
    nodemon
```

3. To view all users, use the following `GET` route in `Postman`

```Javascript
    GET localhost:3000/users
```

4. Use one of the above user credentials to login at the following `POST` route and obtain the `Bearer token` in `Postman`

```Javascript
    POST localhost:3000/login
```

5. To view all posts for the logged-in user, navigate to the following route `GET /posts` after setting the obtained bearer token in `Postman`

```Javascript
    GET localhost:3000/posts
```

6. To view a particular post for the logged-in user, navigate to the following route `GET /posts/:id` after setting the obtained bearer token in `Postman`, where id is an Integer that denotes `post id`

```Javascript
    GET localhost:3000/posts/:id
```

    E.g.:

```Javascript
    GET localhost:3000/posts/1
    will
    a. show post with `id=1` if it is owned by the logged-in user
    b. will return "Unauthorized Request" if post is not owned by the logged-in user
    c. will return "Post Not Found" if post does not exists
```

### Note

If using the seed database provided, there are thirty posts in total, with ids ranging from `1, 2, 3, ..., 29, 30`
If using the seed database provided, `User` with `id=6` will have `no posts`

7. To fetch all comments about a post with id=:id, navigate to the following route `GET localhost:3000/posts/:id/comments` in `Postman`

```Javascript
    GET localhost:3000/posts/:id/comments
```

a. will show all comments on a post with `id=:id`
b. will return `No comments on post` if comment or post doesn't exist

### Note

If using the seed database provided, `posts` with ids ranging from `26 to 30` will have `no comments`

8. (OPTIONAL) To fetch all comments made by a user with userId=n about a specific post, navigate to the following route `post GET /posts/:id/comments?userId=n` in `Postman`

```Javascript
    GET localhost:3000/posts/:id/comments?userId=n
```

a. will show all comments made by user with userId=n on a post with `id=:id`
b. will return `No comments on post` if comment or post doesn't exist

### Note

`userId` must be passed as a `query parameter`
The logic fetches the id from the `users` table based on the `email` field in the `comments` table
If using the seed database provided, each user(except for user with id=6) has one comment on each post (except for posts with id from 26-30 )
If using the seed database provided, User with `email=Karley_Dach@jasper.info` will have `no comments`

9. To create a new post for the logged-in user, navigate to the following route `POST /posts` in `Postman`

```Javascript
    `POST localhost:3000/posts`
```

Provide the title and body as raw JSON

```Javascript
    {
        "title": "title",
        "body": "body"
    }
```

If no data provided, it will return `Empty Data, Post Not Created` response

10. To add a new comment to a post, navigate to `POST /posts/:id/comments` in `Postman`

```Javascript
    POST localhost:3000/posts/:id/comments
```

Provide the name, email, and body as raw JSON

```Javascript
    {
        "name": "name",
        "email": "Shanna@melissa.tv",
        "body": "body"
    }
```

If no data provided, it will return `Empty Data, Comment not added!` response

## Note

To make the comment searchable with userId as shown in `Step 8. above`, use one of the `emails` from the user table `except` for `email=Karley_Dach@jasper.info` as this user has no posts

11. To update a post with id = :id by the logged in user, navigate to `PATCH /posts/:id` in `Postman`

```Javascript
    PATCH localhost:3000/posts/:id
```

Provide the title and body as raw JSON

```Javascript
    {
        "title": "title",
        "body": "body"
    }
```

returns `Unauthorized request` if user does not owns the post
returns `Post does not exists` if post does not exists
returns `Empty Data, Post Not Updated` if no data supplied

12. To update a comment with id = :cId on a post with id = :id navigate to `PATCH /posts/:id/comments/:cId` in `Postman`

```Javascript
    PATCH localhost:3000/posts/:id/comments/:cId
```

Provide the name, email, and body as raw JSON

```Javascript
    {
        "name": "name",
        "email": "Shanna@melissa.tv",
        "body": "body"
    }
```

returns `Empty Data, Comment not Updated` if no data supplied
returns `Comment does not exists` if comment does not exists

13. To delete a comment with id = cId, navigate to `DELETE /posts/:id/comments/:cId in `Postman`

```Javascript
    DELETE localhost:3000/posts/:id/comments/:cId
```

returns `Comment does not exists` if it does not exist

Application structure has been split by type

This application uses eslint and prettier for code formatting
