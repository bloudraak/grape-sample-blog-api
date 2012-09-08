# Blog API

This is a sample application showing how to use grape to create a simple API. 

## Usage

Getting all the weblogs

  curl -i http://localhost:3000/weblogs

Creating a weblog 

  curl -d '{"title": "Dummy"}'  -X POST -H Content-Type:application/json http://localhost:3000/weblogs
  
Deleting a weblog 

  curl -X DELETE http://localhost:3000/weblogs/1
  
Updating a weblog

  curl -d '{"title": "Another Weblog"}' -X PUT -H Content-Type:application/json http://localhost:3000/weblogs/2

Get the posts of the weblog #2

  curl -i http://localhost:3000/weblogs/2/posts
  
Create a post in a weblog #2
  
  curl -d '{"title": "Dummy"}'  -X POST -H Content-Type:application/json http://localhost:3000/weblogs/2/posts
  
Delete all posts in weblog #2

  curl -X DELETE http://localhost:3000/weblogs/2/posts
  
Updating a post

  curl -d '{"title": "Dummy"}'  -X POST -H Content-Type:application/json http://localhost:3000/posts/2
  
Delete all posts

  curl -X DELETE http://localhost:3000/posts
  
Delete a specific post

  curl -X DELETE http://localhost:3000/posts/2
 
Delete all comments from post #2

  curl -X DELETE http://localhost:3000/posts/2/comments
  
Create a comment in a post #2
  
  curl -d '{"name": "Bob"}'  -X POST -H Content-Type:application/json http://localhost:3000/posts/2/comments

Get a comment #2

  curl http://localhost:3000/comments/2
  
Delete a comment #2

  curl -X DELETE http://localhost:3000/comments/2
  
Delete all comments

  curl -X DELETE http://localhost:3000/comments
  
Updating comment #2

  curl -d '{"name": "Sam"}' -X PUT-H Content-Type:application/json http://localhost:3000/comments/2

  
