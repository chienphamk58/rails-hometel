class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_address, null: false
      t.integer :post_price, null: false
      t.string :post_phone, null: false
      t.integer :user_id, null: false
      t.string :post_type
      t.string :post_intro
      t.string :post_picture
      t.timestamps null: false
    end
  end
end
