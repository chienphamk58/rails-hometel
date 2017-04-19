class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.text :desc

    end
  end
end
