class DropTableKeywords < ActiveRecord::Migration
  def up
    drop_table :keywords
  end

  def down
    create_table :keywords do |t|
      t.string :name

      t.timestamps
    end
  end
end
