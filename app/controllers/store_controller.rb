#encoding: utf-8
class StoreController < ApplicationController
  def index
  end
  
  def eqpgroup_show
    @title = "Просмотр элемента бокового меню второго уровня"
    @eqpgroup = Eqpgroup.find(params[:id])
  end
  
end
