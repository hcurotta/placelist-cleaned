class CreateCommentsTable < ActiveRecord::Migration
	def up
	  create_table :comments do |t|
	    t.text :body
	    t.integer :list_id

	    t.timestamps
	  end
	end

	def down
	  drop_table :comments
	end
end
