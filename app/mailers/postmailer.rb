class Postmailer < ActionMailer::Base
    default from: "GerasimovMN@khv.dv.rt.ru"
    def contact(recipient, subject, message, sent_at = Time.now)
	#mail(:to => "mgerasim.mail@gmail.com", :subject => "Hello", )
	mail(:to => "GerasimovMN@khv.dv.rt.ru", :subject => "Hello", )
    end
end
