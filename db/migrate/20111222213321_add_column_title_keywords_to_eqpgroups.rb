class AddColumnTitleKeywordsToEqpgroups < ActiveRecord::Migration
  def change
    add_column :eqpgroups, :meta_title, :string
    add_column :eqpgroups, :meta_description, :string
    add_column :eqpgroups, :meta_keywords, :string
  end
end
