class EqpAddIndx < ActiveRecord::Migration
  def up
	add_column :eqps, :indx, :integer
  end

  def down
	remove_column :eqps, :indx
  end
end
