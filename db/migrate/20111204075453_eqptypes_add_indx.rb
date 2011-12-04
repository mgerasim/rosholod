class EqptypesAddIndx < ActiveRecord::Migration
  def up
	add_column :eqptypes, :indx, :integer
  end

  def down
	remove_column :eqptypes, :indx
  end
end
