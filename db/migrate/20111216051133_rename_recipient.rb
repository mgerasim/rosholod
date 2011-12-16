class RenameRecipient < ActiveRecord::Migration
  def up
    rename_column :postmails, :recipiend, :recipient
  end

  def down
     rename_column :postmails, :recipient, :recipiend
  end
end
