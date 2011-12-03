class CreateEqps < ActiveRecord::Migration
  def change
    create_table :eqps do |t|
      t.string :name
      t.string :v1
      t.string :v2
      t.string :v3
      t.string :v4

      t.timestamps
    end
  end
end
