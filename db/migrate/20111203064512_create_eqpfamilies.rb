class CreateEqpfamilies < ActiveRecord::Migration
  def change
    create_table :eqpfamilies do |t|
      t.string :name
      t.timestamps
    end
  end
end
