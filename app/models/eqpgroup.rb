class Eqpgroup < ActiveRecord::Base
	belongs_to :eqpfamily
	has_many :eqptypes, :order => "indx"
end
