require 'spec_helper'

describe "keywords/show.html.erb" do
  before(:each) do
    @keyword = assign(:keyword, stub_model(Keyword,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
