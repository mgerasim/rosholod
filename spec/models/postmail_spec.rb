#encoding: utf-8

require 'spec_helper'

describe Postmail do
    before (:each) do
	@attr = {:recipient => "GerasimovMN@khv.dv.rt.ru", :subject => "Тестовая тема",	 :fullname => "Сидоров Иван Петрович",	 :phone => "4212322151", :email => "rosholod@rosholod.ru", :message => "Test message" }
    end
    
    it "should create a new instance given valid attributes " do
	Postmail.create!(@attr)
    end
		 
    it "should require a recipient" do
	no_recipient = Postmail.new(@attr.merge(:recipient=>""))
	no_recipient.should_not be_valid
    end
    
    it "should require a subject" do
	no_subject = Postmail.new(@attr.merge(:subject=>""))
	no_subject.should_not be_valid
    end
    
    it "should require a fullname" do
	no_fullname = Postmail.new(@attr.merge(:fullname=>""))
	no_fullname.should_not be_valid
    end
    
    it "should require a phone" do
	no_phone = Postmail.new(@attr.merge(:phone=>""))
	no_phone.should_not be_valid
    end
    
    it "should require a email" do
	no_email = Postmail.new(@attr.merge(:email=>""))
	no_email.should_not be_valid
    end
    
    it "should require a message" do
	no_message = Postmail.new(@attr.merge(:message=>""))
	no_message.should_not be_valid
    end
    
    
end
