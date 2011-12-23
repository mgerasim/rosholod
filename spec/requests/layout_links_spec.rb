# Home 		/		root_path
# Contact	/contact	contact_path
# Catalog	/catalog	catalog_path
# Service	/service	service_path
# Sendmail	/sendmail	sendmail_path
require 'spec_helper'

describe "LayoutLinks" do

    it "should have a Home page at '/'" do
	get '/'
	response.status.should be(200)
    end
    
    it "should have a Contact page '/contact'" do
	get '/contact'
	response.status.should be(200)
    end
    
    it "should have a Catalog page '/service'" do
	get '/catalog'
	response.status.should be(200)
    end
    
    it "should have a Service page '/service'" do
	get '/service'
	response.status.should be(200)
    end
    
    it "should have a Postmail page '/sendmail'" do
	get '/sendmail'
	response.status.should be(200)
    end

  describe "should have a title, description, keywords" do
    
    before (:each) do
	@attr_eqpfamily = {
	    :name => "Example Eqpfamily"
	}
	
	@attr_eqpgroup = {
	    :name => "Example Eqpgroup",
	    :meta_title => "meta, title",
	    :meta_description => "meta, description",
	    :meta_keywords => "meta, keywords"
	}
	
	@eqpfamily = Eqpfamily.create!(@attr_eqpfamily)
	@eqpgroup = Eqpgroup.new(@attr_eqpgroup)
	@eqpgroup.eqpfamily = @eqpfamily
	@eqpgroup.save
    end
    
  end
  
  
  describe "should have a meta tag from settings" do
    before (:each) do
	@attr_setting = {
	    :title_main => "Example title main",
	    :title_service => "Example title service",
	    :title_price => "Example title price ",
	    :title_sendmail => "Example title sendmail"
	}
	@setting = Setting.create!(@attr)
    end
    
    it "should have Catalog a title tag from setting" do
	get '/catalog'
	response.should have_selector("title", :content => @setting.title_service)
    end
    
    it "should have a Main a title tag from setting" do
	get '/'
	response.should have_selector("meta.description", :content => "ddd")
    end
    
    
  end
  
end
