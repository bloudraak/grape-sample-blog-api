require 'grape'

Blog::Application.routes.draw do
  
  mount Blog::API => "/"

end
