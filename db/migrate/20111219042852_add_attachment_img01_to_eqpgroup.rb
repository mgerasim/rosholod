class AddAttachmentImg01ToEqpgroup < ActiveRecord::Migration
  def self.up
    add_column :eqpgroups, :img01_file_name, :string
    add_column :eqpgroups, :img01_content_type, :string
    add_column :eqpgroups, :img01_file_size, :integer
    add_column :eqpgroups, :img01_updated_at, :datetime
  end

  def self.down
    remove_column :eqpgroups, :img01_file_name
    remove_column :eqpgroups, :img01_content_type
    remove_column :eqpgroups, :img01_file_size
    remove_column :eqpgroups, :img01_updated_at
  end
end
