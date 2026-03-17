class CreateLandmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.string :category
      t.string :address
      t.text :description
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
