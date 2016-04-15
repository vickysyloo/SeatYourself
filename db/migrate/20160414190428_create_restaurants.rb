class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.integer :seats
      t.time :opening
      t.time :closing

      t.timestamps null: false
    end
  end
end
