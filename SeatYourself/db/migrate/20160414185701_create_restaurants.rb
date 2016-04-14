class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.time :opening
      t.time :closing
      t.integer :seats
      t.string :phone

      t.timestamps null: false
    end
  end
end
