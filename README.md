# Blog API

This is a example application showing how to use [grape](https://github.com/intridea/grape) to create a simple API. This sample
show cases how to create a simple API without authentication, caching, custom errors, 
entities and such other things to build a robust public API.

I wrote the sample because I was unable to find a sample to cover the basics of grape.

## Environment

The sample was developed using the following software. If your software is different, the 
sample may still work, but there is no guarantee. 

1. Rails 3.2.8
2. ruby 1.9.3p194
3. OS X 10.8.1 (aka Mountain Lion)
4. Grape (0.2.1) 

## Setup

Install the gems

```bash
bundle install
```

Create and migrate the database

```bash
rake db:migrate
```

Seed the database

```bash
rake db:seed
```

## Running the sample

You can run the server using the built-in rails server

```bash
rails server
```

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
curl -d '{"title": "Dummy"}'  -X PUT -H Content-Type:application/json http://localhost:3000/posts/2
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
