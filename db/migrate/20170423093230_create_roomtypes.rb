class CreateRoomtypes < ActiveRecord::Migration
  def change
    create_table :roomtypes do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
