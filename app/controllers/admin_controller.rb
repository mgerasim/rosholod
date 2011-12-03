class AdminController < ApplicationController
	def index
		@eqpfamilies = Eqpfamily.all
	end

	def eqpfamily_create
		@eqpfamily = Eqpfamily.new(params[:eqpfamily])
		
		respond_to do |format|
			if @eqpfamily.save
				#format.html { redirect_to(@eqpfamily) }
				format.html { redirect_to( :action => "index" )}
			else
				format.html { render :action => "eqpfamily_new" }
			end
		end
	end

	def eqpfamily_new
		@eqpfamily = Eqpfamily.new
		respond_to do |format|
      		format.html # new.html.erb
      		format.xml  { render :xml => @eqpfamily }
    	end
	end

	def eqpgroup_index
		@eqpfamily = Eqpfamily.find(params[:id])				
		@eqpgroups = Eqpgroup.find(:all,
							:conditions => ["eqpfamily_id = ?", @eqpfamily])
	end

	def eqpgroup_new
		@eqpgroup = Eqpgroup.new
		@id = params[:id]
	end

	def eqpgroup_create
		@eqpgroup = Eqpgroup.new(params[:eqpgroup])
		@eqpfamily = Eqpfamily.find(params[:id])
		@eqpgroup.eqpfamily = @eqpfamily
		respond_to do |format|
			if @eqpgroup.save
				#format.html { redirect_to(@eqpfamily) }
				format.html { redirect_to( :action => "eqpgroup_index", :id => @eqpfamily )}
			else
				format.html { render :action => "eqpgroup_new" }
			end
		end
	end
end
