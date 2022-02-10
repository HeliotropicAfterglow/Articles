class AddUsernameToUsers < ActiveRecord::Migration[6.1]
  # rails generate migration add_username_to_users username:string:uniq
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
end
