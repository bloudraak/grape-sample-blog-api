require 'grape'

module Blog

  class API < Grape::API
  
    resource :weblogs do
    
      get do
        Weblog.all
      end
      
      get ':id' do
        Weblog.find(params[:id])
      end
      
      get ':id/posts' do
        weblog = Weblog.find(params[:id])
        weblog.posts
      end
      
      post ':id/posts' do
        @weblog = Weblog.find(params[:id])
        @post = Post.new
        @post.title = params[:title] if params[:title]
        @post.body = params[:body] if params[:body]
        @weblog.posts << @post
        
        status 201
        @post
      end
      
      delete ':id/posts' do
        @weblog = Weblog.find(params[:id])
        @weblog.posts.clear
      end
      
      post do
        @weblog = Weblog.new
        @weblog.title = params[:title] if params[:title]
        @weblog.description = params[:description] if params[:description]
        @weblog.save 
        @weblog
      end
      
      put ':id' do
        @weblog = Weblog.find(params[:id])
        @weblog.title = params[:title] if params[:title]
        @weblog.description = params[:description] if params[:description]
        @weblog.save
        
        @weblog
      end
      
      delete do
        Weblog.destroy_all()
      end
    
      delete ':id' do
        Weblog.destroy(params[:id])
      end
    
    end 
    
    resource :posts do
    
      get do
        Post.all
      end
      
      get ':id' do
        Post.find(params[:id])
      end
      
      get ':id/comments' do
        @post = Post.find(params[:id])
        @post.comments
      end
      
      delete ':id/comments' do
        @post = Post.find(params[:id])
        @post.comments.clear
      end
      
      post ':id/comments' do
        @post = Post.find(params[:id])
        @comment = Comment.new
        @comment.name = params[:name] if params[:name]
        @comment.name = params[:body] if params[:body]
        @post.comments << @comment
        @comment
      end
      
      delete ':id' do
        Post.destroy(params[:id])
      end
      
      put ':id' do
        @post = Post.find(params[:id])
        @post.title = params[:title] if params[:title]
        @post.body = params[:body] if params[:body]
        @post.save
        
        @post
      end
      
      delete do
        Post.destroy_all()
      end
      
    end
    
    resource :comments do
      get do
        Comment.all
      end
      
      get ':id' do
        Comment.find(params[:id])
      end
      
      put ':id' do
        @comment = Comment.find(params[:id])
        @comment.name = params[:name] if params[:name]
        @comment.body = params[:body] if params[:body]
        @comment
      end
      
      delete ':id' do
        Comment.destroy(params[:id])
      end
      
      delete do
        Comment.destroy_all()
      end      
    end
      
  end

end

