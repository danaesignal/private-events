class AddUsernameAndEmailToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string, unique: true
    add_column :users, :email, :string, unique: true
  end
end
