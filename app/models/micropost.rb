class Micropost < ActiveRecord::Base
  #attr_accessible :content, :user_id  In Rails 4, apparently we don't use attr_accessible anymore
  
  belongs_to :user
  
  validates :content, :length => { :maximum => 140 }
end
