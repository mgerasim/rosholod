#encoding: utf-8
class PagesController < ApplicationController
  
  helper :all
  
  include ApplicationHelper

  
  def home
    @title = setting.title_main
    @IsRoot = 1
    
  end

  def main
    @title = setting.title_main
    @IsRoot = 1
  end
  
  def catalog
    @title = setting.title_service
  end
  
  def price
    @title = setting.title_price
  end
  
  def contact
    @title = setting.title_contact
  end
 
  def postmail
    @title = setting.title_sendmail
    @postmail = Postmail.new
  end 
  
  def sendmail
  
	@postmail = Postmail.new(params[:postmail])
	@postmail.recipient = "rosholod@rosholod.khv.ru;mgerasim.mail@gmail.com";
	respond_to do |format|
	    if @postmail.save
#	    	@postmail.sendmail()
#		format.html { redirect_to( :action => "postmail" )}
		format.html { redirect_to main_path }
	    else
		format.html { render :action => "postmail" }
	    end
	end
#	@attr = {:recipient => "mgerasim.mail@gmail.com", :subject => "Тестовая тема", :fullname => "Сидоров Иван Петрович", :phone => "4212322151", :email => "rosholod@rosholod.ru", :message => "Test message" }
#	m = Postmail.create!(@attr)
#	m.sendmail()
#	email = params[:email]
#	recipient = "GerasimovMN@khv.dv.rt.ru"
#	subject = params[:subject]
#	fullname = params[:fullname]
#	phone = params[:phone]
#	message = params[:message]
#	mail = Postmailer.contact(recipient, subject, fullname, phone, email, message)
#	mail.deliver
	
#	redirect_to postmail_path
	
#	return if request.xhr?
#	render :text => 'Message sent successfully'
  end

end
