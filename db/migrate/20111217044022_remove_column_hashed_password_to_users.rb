class RemoveColumnHashedPasswordToUsers < ActiveRecord::Migration
  def up
	remove_column :users, :hashed_password
  end

  def down
	add_column :users, :hashed_password, :string
  end
end
