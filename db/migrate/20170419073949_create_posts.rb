class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_city
      t.string :post_district
      t.string :post_road
      t.integer :post_price, null: false
      t.string :post_phone, null: false
      t.integer :user_id, null: false
      t.integer :roomtype_id, null: false
      t.string :post_type
      t.string :post_intro
      t.string :post_picture
      t.timestamps null: false
    end
  end
end
