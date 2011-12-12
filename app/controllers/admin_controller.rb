#encoding: utf-8
class AdminController < ApplicationController


	def index
		@title = "Администрирование"
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
		@title = "Добавление элемента бокового меню"
		@eqpfamily = Eqpfamily.new
		respond_to do |format|
      		format.html # new.html.erb
      		format.xml  { render :xml => @eqpfamily }
    	end
	end

	def eqpfamily_show
		@title = "Просмотр элементов бокового меню"
		@eqpfamily = Eqpfamily.find(params[:id])
		@eqpfamily.eqpgroups.each do |eqpgroup|
			eqpgroup.indx = @eqpfamily.eqpgroups.index(eqpgroup)
			eqpgroup.indx = eqpgroup.indx * 2
			eqpgroup.save
		end
	end

	def eqpfamily_edit
		@title = "Редактирование элемента бокового меню"
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
		@title = "Добавление элемента бокового меню второго уровня"
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
		@title = "Просмотр элемента бокового меню второго уровня"
		@eqpgroup = Eqpgroup.find(params[:id])
		@eqpfamily = @eqpgroup.eqpfamily
		@eqpgroup.eqptypes.each do |eqptype|
			eqptype.indx = @eqpgroup.eqptypes.index(eqptype)
			eqptype.indx = eqptype.indx * 2
			eqptype.save
		end
	end

	def eqpgroup_edit
		@title = "Редактирование элемента бокового меню второго уровня"
		@eqpfamily = Eqpfamily.find(params[:eqpfamily_id])
		@eqpgroup = Eqpgroup.find(params[:id])
	end

#
# Типы
#
	def eqptype_new
		@title = "Добавление типа товара"
		@eqptype = Eqptype.new
		@id = params[:id]
	end

	def eqptype_create
		@eqptype = Eqptype.new(params[:eqptype])
		@eqpgroup = Eqpgroup.find(params[:id])
		@eqptype.eqpgroup = @eqpgroup
		@eqptype.indx = 9999
#		respond_to do |format|
#			if @eqptype.save
#				#format.html { redirect_to(@eqpfamily) }
#				format.html { redirect_to( :action => "eqpgroup_show", :id => @eqpgroup, :eqpfamily_id => @eqpgroup.eqpfamily )}
#			else
#				format.html { render :action => "eqptype_new" }
#			end
#		end
		@eqptype.save
		respond_to do |format|
			format.html { redirect_to( :action => "eqpgroup_show", :id => @eqpgroup, :eqpfamily_id => @eqpgroup.eqpfamily )}
		end

	end

	def eqptype_destroy
		@eqptype = Eqptype.find(params[:id])
		eqpgroup = @eqptype.eqpgroup
		@eqptype.destroy
		respond_to do |format|
      		format.html { redirect_to( :action => "eqpgroup_show", :id => eqpgroup.id) }      	
    	end
	end

	def eqptype_moveup
		@eqptype = Eqptype.find(params[:id])
		@eqpgroup = @eqptype.eqpgroup
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
		@title = "Просмотр типа товара"
		@eqptype = Eqptype.find(params[:id])
		@eqpgroup = @eqptype.eqpgroup;
		@eqptype.eqps.each do |eqp|
			eqp.indx = @eqptype.eqps.index(eqp)
			eqp.indx = eqp.indx * 2
			eqp.save
		end
	end

	def eqptype_edit
		@title = "Редактирование типа товара"
		@eqpgroup = Eqpgroup.find(params[:eqpgroup_id])
		@eqptype = Eqptype.find(params[:id])
	end

#
# Элементы
#

	def eqp_new
		@title = "Добавление нового товара"
		@eqp = Eqp.new
		@id = Eqptype.find(params[:id])
		eqptype = @id;
		eqpgroup = Eqpgroup.find(eqptype.eqpgroup)
		@p1 = eqpgroup.p1
		@p2 = eqptype.eqpgroup.p2
		@p3 = eqptype.eqpgroup.p3
		@p4 = eqptype.eqpgroup.p4
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
		@eqp = Eqp.find(params[:id])
		@eqptype = @eqp.eqptype
		@eqp.destroy
		respond_to do |format|
      		format.html { redirect_to( :action => "eqptype_show", :id => @eqptype.id) }      	
    	end
	end

	def eqp_moveup
		@eqp = Eqp.find(params[:id])
		@eqptype = @eqp.eqptype
		@eqp.indx = @eqp.indx - 3
		@eqp.save
		respond_to do |format|
			format.html{redirect_to(:action => "eqptype_show", :id => @eqptype.id)}
		end
	end

	def eqp_update
		@eqp = Eqp.find(params[:id])
		@eqptype = @eqp.eqptype;
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
		@title = "Просмот товаров"
		@eqptype = Eqptype.find(params[:eqptype_id])
		@eqp = Eqp.find(params[:id])

	end

	def eqp_edit
		@title = "Редактирование товара"
		@eqp = Eqp.find(params[:id])
		@id = @eqp.eqptype;
		@p1 = @eqp.eqptype.eqpgroup.p1;
		@p2 = @eqp.eqptype.eqpgroup.p2;
		@p3 = @eqp.eqptype.eqpgroup.p3;
		@p4 = @eqp.eqptype.eqpgroup.p4;
	end
end
