class AddEqpgroupDescription < ActiveRecord::Migration
  def up
    add_column :eqpgroups, :description, :string
  end

  def down
    remove_column :eqpgroups, :description
  end
end
