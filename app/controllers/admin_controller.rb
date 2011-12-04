class AdminController < ApplicationController
	def index
		@eqpfamilies = Eqpfamily.find(:all, :order => 'indx')
		@eqpfamilies.each do |eqpfamily|
			eqpfamily.indx = @eqpfamilies.index(eqpfamily)
			eqpfamily.indx = eqpfamily.indx * 2
			eqpfamily.save
		end
	end

	def eqpfamily_create
		@eqpfamily = Eqpfamily.new(params[:eqpfamily])
		@eqpfamily.indx = 9999
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

	def eqpfamily_show
		@eqpfamily = Eqpfamily.find(params[:id])
		@eqpfamily.eqpgroups.each do |eqpgroup|
			eqpgroup.indx = @eqpfamily.eqpgroups.index(eqpgroup)
			eqpgroup.indx = eqpgroup.indx * 2
			eqpgroup.save
		end
	end

	def eqpfamily_edit
		@eqpfamily = Eqpfamily.find(params[:id])
	end

	def eqpfamily_update		
		@eqpfamily = Eqpfamily.find(params[:id])
		respond_to do |format|
      		if @eqpfamily.update_attributes(params[:eqpfamily])        		
        		format.html { redirect_to(:action => "index") }
        		format.xml  { head :ok }
      		else
        		format.html { render :action => "eqpfamily_edit" }
        		format.xml  { render :xml => @prop.errors, :status => :unprocessable_entity }
      		end
    	end
	end

	def eqpfamily_destroy
		@eqpfamily = Eqpfamily.find(params[:id])
		@eqpfamily.destroy
		respond_to do |format|
      		format.html { redirect_to( :action => "index") }      	
    	end
	end

	def eqpfamily_moveup
		eqpfamily = Eqpfamily.find(params[:id])
		eqpfamilies = Eqpfamily.all
		indx = eqpfamily.indx
		eqpfamily.indx=eqpfamily.indx-3
		eqpfamily.save
		respond_to do |format|			
			format.html { redirect_to( :action => "index" )}			
		end
	end
#
# Группы
#
	

	def eqpgroup_new
		@eqpgroup = Eqpgroup.new
		@id = params[:id]
	end

	def eqpgroup_create
		@eqpgroup = Eqpgroup.new(params[:eqpgroup])
		@eqpfamily = Eqpfamily.find(params[:id])
		@eqpgroup.eqpfamily = @eqpfamily
		@eqpgroup.indx = 9999
		respond_to do |format|
			if @eqpgroup.save
				#format.html { redirect_to(@eqpfamily) }
				format.html { redirect_to( :action => "eqpfamily_show", :id => @eqpfamily )}
			else
				format.html { render :action => "eqpgroup_new" }
			end
		end
	end

	def eqpgroup_destroy
		@eqpfamily = Eqpfamily.find(params[:eqpfamily_id])
		@eqpgroup = Eqpgroup.find(params[:id])
		@eqpgroup.destroy
		respond_to do |format|
      		format.html { redirect_to( :action => "eqpfamily_show", :id => @eqpfamily.id) }      	
    	end
	end

	def eqpgroup_moveup
		@eqpfamily = Eqpfamily.find(params[:eqpfamily_id])
		@eqpgroup = Eqpgroup.find(params[:id])
		@eqpgroup.indx = @eqpgroup.indx - 3
		@eqpgroup.save
		respond_to do |format|
			format.html{redirect_to(:action => "eqpfamily_show", :id => @eqpfamily.id)}
		end
	end

	def eqpgroup_update
		@eqpfamily = Eqpfamily.find(params[:eqpfamily_id])
		@eqpgroup = Eqpgroup.find(params[:id])
		respond_to do |format|
			if @eqpgroup.update_attributes(params[:eqpgroup])
				format.html { redirect_to( :action => "eqpfamily_show", :id => @eqpfamily.id) }      	
				format.xml  { head :ok }
      		else
        		format.html { render :action => "eqpgroup_edit" }
        		format.xml  { render :xml => @prop.errors, :status => :unprocessable_entity }
        	end
		end
	end

	def eqpgroup_show
		@eqpfamily = Eqpfamily.find(params[:eqpfamily_id])
		@eqpgroup = Eqpgroup.find(params[:id])
	end

	def eqpgroup_edit
		@eqpfamily = Eqpfamily.find(params[:eqpfamily_id])
		@eqpgroup = Eqpgroup.find(params[:id])
	end

#
# Типы
#
	def eqptype_new
		@eqptype = Eqptype.new
		@id = params[:id]
	end

	def eqptype_create
		@eqptype = Eqptype.new(params[:eqptype])
		@eqpgroup = Eqpgroup.find(params[:id])
		@eqptype.eqpgroup = @eqpgroup
		@eqptype.indx = 9999
		respond_to do |format|
			if @eqptype.save
				#format.html { redirect_to(@eqpfamily) }
				format.html { redirect_to( :action => "eqpgroup_show", :id => @eqpgroup, :eqpfamily_id => @eqpgroup.eqpfamily )}
			else
				format.html { render :action => "eqptype_new" }
			end
		end
	end

	def eqptype_destroy
		@eqpgroup = Eqpgroup.find(params[:id])
		@eqptype = Eqptype.find(params[:eqptype])
		@eqptype.destroy
		respond_to do |format|
      		format.html { redirect_to( :action => "eqpgroup_show", :id => @eqpgroup.id) }      	
    	end
	end

	def eqptype_moveup
		@eqpgroup = Eqpgroup.find(params[:eqpgroup_id])
		@eqptype = Eqptype.find(params[:id])
		@eqptype.indx = @eqptype.indx - 3
		@eqptype.save
		respond_to do |format|
			format.html{redirect_to(:action => "eqpgroup_show", :id => @eqpgroup.id, :eqpfamily_id => @eqpgroup.eqpfamily)}
		end
	end

	def eqptype_update
		@eqpgroup = Eqpgroup.find(params[:eqpgroup_id])
		@eqptype = Eqptype.find(params[:id])
		respond_to do |format|
			if @eqptype.update_attributes(params[:eqptype])
				format.html { redirect_to( :action => "eqpgroup_show", :id => @eqpgroup.id, :eqpfamily_id => @eqpgroup.eqpfamily) }      	
				format.xml  { head :ok }
      		else
        		format.html { render :action => "eqptype_edit" }
        		format.xml  { render :xml => @prop.errors, :status => :unprocessable_entity }
        	end
		end
	end

	def eqptype_show
		@eqpgroup = Eqpgroup.find(params[:eqpgroup_id])
		@eqptype = Eqptype.find(params[:id])
	end

	def eqptype_edit
		@eqpgroup = Eqpgroup.find(params[:eqpgroup_id])
		@eqptype = Eqptype.find(params[:id])
	end

#
# Элементы
#

	def eqp_new
		@eqp = Eqp.new
		@id = Eqptype.find(params[:id])
	end

	def eqp_create
		@eqp = Eqp.new(params[:eqp])
		@eqptype = Eqptype.find(params[:id])
		@eqp.eqptype = @eqptype
		@eqp.indx = 99999
		respond_to do |format|
			if @eqp.save
				#format.html { redirect_to(@eqpfamily) }
				format.html { redirect_to( :action => "eqptype_show", :id => @eqp.eqptype, :eqpgroup_id => @eqp.eqptype.eqpgroup )}
			else
				format.html { render :action => "eqp_new" }
			end
		end
	end

	def eqp_destroy
		@eqptype = Eqptype.find(params[:id])
		@eqp = Eqp.find(params[:eqp])
		@eqp.destroy
		respond_to do |format|
      		format.html { redirect_to( :action => "eqptype_show", :id => @eqptype.id) }      	
    	end
	end

	def eqp_moveup
		@eqptype = Eqpgroup.find(params[:eqptype_id])
		@eqp = Eqp.find(params[:id])
		@eqp.indx = @eqp.indx - 3
		@eqp.save
		respond_to do |format|
			format.html{redirect_to(:action => "eqptype_show", :id => @eqptype.id)}
		end
	end

	def eqp_update
		@eqptype = Eqptype.find(params[:eqptype_id])
		@eqp = Eqp.find(params[:id])
		respond_to do |format|
			if @eqp.update_attributes(params[:eqp])
				format.html { redirect_to( :action => "eqptype_show", :id => @eqptype.id) }      	
				format.xml  { head :ok }
      		else
        		format.html { render :action => "eqp_edit" }
        		format.xml  { render :xml => @prop.errors, :status => :unprocessable_entity }
        	end
		end
	end

	def eqp_show
		@eqptype = Eqptype.find(params[:eqptype_id])
		@eqp = Eqp.find(params[:id])
	end

	def eqp_edit
		@eqptype = Eqptype.find(params[:eqptype_id])
		@eqp = Eqp.find(params[:id])
	end
end
