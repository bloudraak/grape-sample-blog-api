class Weblog < ActiveRecord::Base
  has_many :posts, :dependent => :destroy
  
  attr_accessible :description, :title
end
