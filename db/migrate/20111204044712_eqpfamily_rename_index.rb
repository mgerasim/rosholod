class EqpfamilyRenameIndex < ActiveRecord::Migration
  def up
	rename_column :eqpfamilies, :index, :indx
  end

  def down
	rename_column :eqpfamilies, :indx, :index
  end   	
end
