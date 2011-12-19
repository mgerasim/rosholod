class RemoveColumnDescriptionFromEqpgroup < ActiveRecord::Migration
  def up
	remove_column :eqpgroups, :description
  end

  def down
	add_column :eqpgroups, :description, :string
  end
end
