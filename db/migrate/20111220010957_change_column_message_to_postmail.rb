class ChangeColumnMessageToPostmail < ActiveRecord::Migration
  def up
    remove_column :postmails, :message
  end

  def down
    add_column :postmails, :message, :string
  end
end
