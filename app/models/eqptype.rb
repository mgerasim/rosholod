class Eqptype < ActiveRecord::Base
	belongs_to :eqpgroup
	has_many :eqps, :order => "indx"
end
