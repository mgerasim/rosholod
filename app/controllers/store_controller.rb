#encoding: utf-8
class StoreController < ApplicationController
  def index
    @title = Setting.first.title_service
  end
  
  def eqpgroup_show
    @eqpgroup = Eqpgroup.find(params[:id])
    @title = "#{@eqpgroup.eqpfamily.name} - #{@eqpgroup.name} установка, продажа, обслуживание, ремонт #{@eqpgroup.meta_title}"
  end
  
end
