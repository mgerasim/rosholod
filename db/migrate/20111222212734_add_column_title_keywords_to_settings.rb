class AddColumnTitleKeywordsToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :title_main, :string
    add_column :settings, :title_service, :string
    add_column :settings, :title_price, :string
    add_column :settings, :title_sendmail, :string
  end
end
