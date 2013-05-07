class ListItem < ActiveRecord::Base
  attr_accessible :list_id, :venue_id
  
  belongs_to :list
  belongs_to :venue

	acts_as_list :scope => :list

  
end