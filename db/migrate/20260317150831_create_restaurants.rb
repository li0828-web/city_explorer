class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.string :address
      t.string :price_range
      t.float :rating
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
