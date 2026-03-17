class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :reviewable, polymorphic: true, null: false
      t.integer :rating
      t.text :comment
      t.string :user_name

      t.timestamps
    end
  end
end
