class Eqptype < ActiveRecord::Base

    

	belongs_to :eqpgroup
	has_many :eqps, :order => "indx", :dependent => :destroy
	has_attached_file :img01, :styles => { :small => "150x150" },
			  :storage => :s3,
#			  :bucket => 'rosholod-devel',
			  :s3_credentials => Rails.root.join('config/s3.yml'),
#			  :s3_credentials => {
 #    				 :access_key_id => 'AKIAJPNLN2VOL4H5CH5A',
#			         :secret_access_key => '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'
#			  },
              :s3_permissions => :public_read,

	                  :url  => 's3-website-ap-northeast-1.amazonaws.com',
#	                  :s3_host_name  => 's3-website-ap-northeast-1.amazonaws.com',
	                  :path => '/:style/:basename.:extension',
#			  :s3_permissions => 'authenticated-read',
                   	  :s3_protocol => 'https' 
                                               	                                    
#        validates_attachment_presence :img01
#        validates_attachment_size :img01, :less_than => 5.megabytes
        validates_attachment_content_type :img01, :content_type => ['image/jpeg', 'image/png']
end
