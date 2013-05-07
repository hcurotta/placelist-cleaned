class CreateVenues < ActiveRecord::Migration
  def up
    create_table :venues do |t|
      t.string :name
      t.text :description
      t.integer :user_id
 
      t.timestamps
    end
  end

  def down
    drop_table :venues
  end

end
