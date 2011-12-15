class PagesController < ApplicationController
  def home
  end

  def main
  end
  
  def catalog
  end
  
  def price
  end
  
  def contact
  end
 
  def postmail
  end 
  
  def sendmail
	email = "GerasimovMN@khv.dv.rt.ru"
	recipient = "ddd"
	subject = "DDDDDDD"
	message = "DDDDDD"
	mail = Postmailer.contact(recipient, subject, message)
	mail.deliver
#	return if request.xhr?
#	render :text => 'Message sent successfully'
  end

end
