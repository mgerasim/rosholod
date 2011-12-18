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
        redirect_to(:controller => "admin", :action => "index")
      else
        flash[:notice] = "Неверная комбинация имя-пароль"
      end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Вы вышли из административной области "
    redirect_to login_path
  end

end
