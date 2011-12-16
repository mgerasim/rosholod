#encoding: utf-8
class Postmailer < ActionMailer::Base
    default from: "rosholod@rosholod.ru"
    
    def contact(recipient, subject, fullname, phone, email, message, sent_at = Time.now)
	
	body = "
Получено письмо с сайта:
Контакты:
    #{fullname}
    тел.: #{phone}
    email: #{email}

Сообщение:
    #{message}

	"
	
	mail(:to => recipient, :subject => subject, :body => body)
    end
end
