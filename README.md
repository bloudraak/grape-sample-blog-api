# Blog API

This is a sample application showing how to use grape to create a simple API. 

## Usage

Getting all the weblogs

```bash
curl -i http://localhost:3000/weblogs
```

Creating a weblog 

```bash
curl -d '{"title": "Dummy"}'  -X POST -H Content-Type:application/json http://localhost:3000/weblogs
```  

Deleting a weblog 

```bash
curl -X DELETE http://localhost:3000/weblogs/1
```

Updating a weblog

```bash
curl -d '{"title": "Another Weblog"}' -X PUT -H Content-Type:application/json http://localhost:3000/weblogs/2
```

Get the posts of the weblog #2

```bash
curl -i http://localhost:3000/weblogs/2/posts
```

Create a post in a weblog #2

```bash
curl -d '{"title": "Dummy"}'  -X POST -H Content-Type:application/json http://localhost:3000/weblogs/2/posts
```
  
Delete all posts in weblog #2

```bash
curl -X DELETE http://localhost:3000/weblogs/2/posts
```  

Updating a post

```bash
curl -d '{"title": "Dummy"}'  -X POST -H Content-Type:application/json http://localhost:3000/posts/2
```
 
Delete all posts

```bash
curl -X DELETE http://localhost:3000/posts
```
  
Delete a specific post

```bash
curl -X DELETE http://localhost:3000/posts/2
```
 
Delete all comments from post #2

```bash
curl -X DELETE http://localhost:3000/posts/2/comments
```

Create a comment in a post #2

```bash  
curl -d '{"name": "Bob"}'  -X POST -H Content-Type:application/json http://localhost:3000/posts/2/comments
```

Get a comment #2

```bash
curl http://localhost:3000/comments/2
```  

Delete a comment #2

```bash
curl -X DELETE http://localhost:3000/comments/2
```
  
Delete all comments

```bash
curl -X DELETE http://localhost:3000/comments
```  

Updating comment #2

```bash
curl -d '{"name": "Sam"}' -X PUT-H Content-Type:application/json http://localhost:3000/comments/2
```
