class EqpAddEqptypeId < ActiveRecord::Migration
  def up
	add_column :eqps, :eqptype_id, :integer
  end

  def down
	remove_column :eqps, :eqptype_id
  end
end
