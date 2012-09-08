class Post < ActiveRecord::Base
  belongs_to :weblog
  has_many :comments, :dependent => :destroy
  attr_accessible :body, :title
end
