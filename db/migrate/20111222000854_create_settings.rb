class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :site_name
      t.string :meta_keywords
      t.string :meta_description

      t.timestamps
    end
  end
end
