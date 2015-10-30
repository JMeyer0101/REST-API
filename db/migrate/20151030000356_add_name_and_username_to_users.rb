class AddNameAndUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :Firstname, :string
    add_column :users, :Lastname, :string
    add_column :users, :Username, :string
  end
end
