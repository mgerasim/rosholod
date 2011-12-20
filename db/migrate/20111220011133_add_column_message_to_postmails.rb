class AddColumnMessageToPostmails < ActiveRecord::Migration
  def change
    add_column :postmails, :message, :text
  end
end
