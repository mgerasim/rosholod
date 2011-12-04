class EqpfamilyAddIndex < ActiveRecord::Migration
  def up
	add_column :eqpfamilies, :index, :integer
  end

  def down
	remove_column :eqpfamilies, :index
  end
end
