class EqpgroupAddIndx < ActiveRecord::Migration
  def up
	add_column :eqpgroups, :indx, :integer
  end

  def down
	remove_column :eqpgroups, :indx
  end
end
