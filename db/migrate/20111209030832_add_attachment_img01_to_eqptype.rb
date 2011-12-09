class AddAttachmentImg01ToEqptype < ActiveRecord::Migration
  def self.up
    add_column :eqptypes, :img01_file_name, :string
    add_column :eqptypes, :img01_content_type, :string
    add_column :eqptypes, :img01_file_size, :integer
    add_column :eqptypes, :img01_updated_at, :datetime
  end

  def self.down
    remove_column :eqptypes, :img01_file_name
    remove_column :eqptypes, :img01_content_type
    remove_column :eqptypes, :img01_file_size
    remove_column :eqptypes, :img01_updated_at
  end
end
