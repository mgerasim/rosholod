class Add_columnDescriptionToEqpgroup < ActiveRecord::Migration
  def change
    add_column :eqpgroups, :description, :text
  end
end
