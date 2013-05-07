class CreateListItems < ActiveRecord::Migration
  def up
    create_table :list_items do |t|
      t.integer :venue_id
      t.integer :list_id

 
      t.timestamps
    end
  end

  def down
    drop_table :list_items
  end

end
