require 'spec_helper'

describe LoginController do

  describe "GET 'add_user'" do
    it "should be successful" do
      get 'add_user'
      response.should be_success
    end
  end

  describe "GET 'login'" do
    it "should be successful" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'logout'" do
    it "should be successful" do
      get 'logout'
      response.should be_success
    end
  end

end
