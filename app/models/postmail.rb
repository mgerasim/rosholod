#encoding: utf-8
class Postmail < ActiveRecord::Base
    
    attr_accessible :recipient, :subject, :fullname, :phone, :email, :message
    
    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    validates :recipient, :presence => true,
			  :length => { :maximum => 50}
    validates :subject, :presence => true,
			:length => { :maximum => 50}
    validates :fullname, :presence => true,
			 :length => { :maximum => 50}
    validates :phone, :presence => true,
		      :length => { :maximum => 50}
    validates :email, :presence => true,
		      :length => { :maximum => 50},
		      :format =>{ :with => email_regex }
		      
    validates :message, :presence => true,
			:length => { :maximum => 500}

    before_save :sendmail

private
			
    def sendmail
	mail = Postmailer.contact(self.recipient, self.subject, self.fullname, self.phone, self.email, self.message)
	mail.deliver
    end
end
