class CreatePosts < ActiveRecord::Migration
  def up
    change_table :posts do |t|
      t.text :desc

    end
  end
end
