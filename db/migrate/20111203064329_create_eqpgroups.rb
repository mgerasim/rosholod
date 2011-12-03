class CreateEqpgroups < ActiveRecord::Migration
  def change
    create_table :eqpgroups do |t|
      t.string :name
      t.integer :pn
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :p4

      t.timestamps
    end
  end
end
