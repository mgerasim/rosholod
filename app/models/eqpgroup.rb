class Eqpgroup < ActiveRecord::Base
	belongs_to :eqpfamily
	has_many :eqptypes, :order => "indx"
	def before_save(record)
	    record.pn = 0
	    record.pn = record.pn+1 if record.p1.nil?
	    record.pn = record.pn+1 if record.p2.nil?
	    record.pn = record.pn+1 if record.p3.nil?
	    record.pn = record.pn+1 if record.p4.nil?
	end
end
