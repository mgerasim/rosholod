class Eqpfamily < ActiveRecord::Base
	has_many :eqpgroups, :order => "indx", :dependent => :destroy
end
