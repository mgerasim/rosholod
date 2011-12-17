#encoding: utf-8

class LoginController < ApplicationController

  def index
  end

  def add_user
    flash.now[:notice] = "Пользователь  зарегистрирован"
  	@user = User.new(params[:user])
  	if request.post? and @user.save
  		flash.now[:notice] = "Пользователь #{@user.name} зарегистрирован"
#  		@user = User.new
  	end
  end

  def login
    session[:user_id] = nil
    if request.post?
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id
        redirect_to(:action => "index")
      else
        flash[:notice] = "Неверная комбинация имя-пароль"
      end
    end
  end

  def logout
  end

end
