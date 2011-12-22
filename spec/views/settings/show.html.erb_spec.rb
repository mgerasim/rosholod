require 'spec_helper'

describe "settings/show.html.erb" do
  before(:each) do
    @setting = assign(:setting, stub_model(Setting,
      :site_name => "Site Name",
      :meta_keywords => "Meta Keywords",
      :meta_description => "Meta Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Site Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Meta Keywords/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Meta Description/)
  end
end
