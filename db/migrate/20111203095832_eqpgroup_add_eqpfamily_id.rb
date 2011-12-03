class EqpgroupAddEqpfamilyId < ActiveRecord::Migration
  def up
	add_column :eqpgroups, :eqpfamily_id, :integer
  end

  def down
	remove_column :eqpgroups, :eqpfamily_id
  end
end
