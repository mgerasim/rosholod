class Eqptype < ActiveRecord::Base
	belongs_to :eqpgroup
	has_many :eqps, :order => "indx"
	has_attached_file :img01, :styles => { :small => "150x150" },
#			  :storage => :s3,
#			  :bucket => 'rosholod',
#			  :s3_credentials => Rails.root.join('config/s3.yml'),
	                  :url  => "/assets/products/:id/:style/:basename.:extension",
	                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
	                                    
#        validates_attachment_presence :img01
#        validates_attachment_size :img01, :less_than => 5.megabytes
        validates_attachment_content_type :img01, :content_type => ['image/jpeg', 'image/png']
end
