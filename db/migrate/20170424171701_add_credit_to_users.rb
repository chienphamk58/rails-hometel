class AddCreditToUsers < ActiveRecord::Migration
  def change
    add_column :users, :credit, :string
  end
end
