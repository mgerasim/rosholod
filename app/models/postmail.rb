#encoding: utf-8
class Postmail < ActiveRecord::Base

	SUBJECT_TYPES = [
		["Запрос на запчасти", "Запрос на запчасти" ],
		["Запрос на ремонт", "Запрос на ремонт" ],
		["Запрос на оборудование", "Запрос на оборудование" ],
		["Запрос на оснащение", "Запрос на оснащение" ],
		["Техническая консультация", "Техническая консультация" ],
		["Руководству", "Руководству" ]
	]


    
    attr_accessible :recipient, :subject, :fullname, :phone, :email, :message
    
    email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

#   validates_inclusion_of :subject,
#    						:in => SUBJECT_TYPES.map{disp, value | value}
    
    validates :recipient, :presence => true,
			  :length => { :maximum => 50}
    validates :subject, :presence => {:message => "Укажите тему сообщения"},
			:length => { :maximum => 50}
    validates :fullname, :presence => {:message => "Укажите Ваше имя"},
			 :length => { :maximum => 50}

    validates :phone, :presence => {:message => "Укажите Ваш телефон"},
		      :length => { :maximum => 50}
    validates :email, :presence => {:message => "Укажите Ваш электронный адрес"},
		      :length => { :maximum => 50}#,		      :format =>{ :with => email_regex }
		      
    validates :message, :presence => {:message => "Введите текст сообщения"},
			:length => { :maximum => 500}

    before_save :sendmail

private
			
    def sendmail
	mail = Postmailer.contact(self.recipient, self.subject, self.fullname, self.phone, self.email, self.message)
	mail.deliver
    end
end
