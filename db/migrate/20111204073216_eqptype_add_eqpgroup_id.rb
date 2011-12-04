class EqptypeAddEqpgroupId < ActiveRecord::Migration
  def up
	add_column :eqptypes, :eqpgroup_id, :integer
  end

  def down
	remove_column :eqptypes, :eqpgroup_id
  end
end

