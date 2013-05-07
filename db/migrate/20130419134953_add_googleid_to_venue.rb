class AddGoogleidToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :googleid, :string
  end
end
