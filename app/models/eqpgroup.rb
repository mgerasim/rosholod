class Eqpgroup < ActiveRecord::Base
	belongs_to :eqpfamily
	has_many :eqptypes, :order => "indx", :dependent => :destroy
	
	has_attached_file :img01, :styles => { :small => "150x150" },
			  :storage => :s3,
			  :s3_credentials => Rails.root.join('config/s3.yml'),
	                  :s3_permissions => :public_read,
	                  :url  => 's3-website-ap-northeast-1.amazonaws.com',
	                  :path => '/eqpgroups/:style/:basename.:extension',
                   	  :s3_protocol => 'https' 
                                               	                                    
        validates_attachment_content_type :img01, :content_type => ['image/jpeg', 'image/png']
	
	def before_save(record)
	    record.pn = 0
	    record.pn = record.pn+1 if record.p1.nil?
	    record.pn = record.pn+1 if record.p2.nil?
	    record.pn = record.pn+1 if record.p3.nil?
	    record.pn = record.pn+1 if record.p4.nil?
	end
end
