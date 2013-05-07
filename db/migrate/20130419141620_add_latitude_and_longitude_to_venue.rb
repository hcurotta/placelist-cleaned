class AddLatitudeAndLongitudeToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :latitude, :string
    add_column :venues, :longitude, :string
    add_column :venues, :address, :string
    add_column :venues, :city, :string
  end
end
