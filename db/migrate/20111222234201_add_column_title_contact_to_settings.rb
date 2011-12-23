class AddColumnTitleContactToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :title_contact, :string
  end
end
