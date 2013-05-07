class Comment < ActiveRecord::Base
	attr_accessible :list_id, :body

	belongs_to :list 

end