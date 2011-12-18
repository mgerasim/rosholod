class UsersAddHashedPassword < ActiveRecord::Migration
  def up
	add_column :users, :hashed_password, :string
	add_column :users, :salt, :string
  end

  def down
	remove_column :users, :hashed_password
	remove_column :users, :salt
  end
end
