require "spec_helper"

describe PostmailsController do
  describe "routing" do

    it "routes to #index" do
      get("/postmails").should route_to("postmails#index")
    end

    it "routes to #new" do
      get("/postmails/new").should route_to("postmails#new")
    end

    it "routes to #show" do
      get("/postmails/1").should route_to("postmails#show", :id => "1")
    end

    it "routes to #edit" do
      get("/postmails/1/edit").should route_to("postmails#edit", :id => "1")
    end

    it "routes to #create" do
      post("/postmails").should route_to("postmails#create")
    end

    it "routes to #update" do
      put("/postmails/1").should route_to("postmails#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/postmails/1").should route_to("postmails#destroy", :id => "1")
    end

  end
end
