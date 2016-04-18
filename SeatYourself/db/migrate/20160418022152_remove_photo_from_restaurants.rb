class RemovePhotoFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :photo, :string
  end
end
