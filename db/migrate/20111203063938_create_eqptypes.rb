class CreateEqptypes < ActiveRecord::Migration
  def change
    create_table :eqptypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
