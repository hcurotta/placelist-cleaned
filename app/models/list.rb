class List < ActiveRecord::Base
  attr_accessible :name, :description, :user_id
  
  has_many :venues, :through => :list_items  
  has_many :list_items
  has_many :comments
  
end