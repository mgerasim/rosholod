# Home 		/		root_path
# Contact	/contact	contact_path
# Catalog	/catalog	catalog_path
# Service	/service	service_path
# Postmail	/postmail	postmail_path
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
    
    it "should have a Postmail page '/postmail'" do
	get '/postmail'
	response.status.should be(200)
    end

  describe "GET /layout_links" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get layout_links_index_path
      response.status.should be(200)
    end
  end
end
