require 'spec_helper'

describe "settings/index.html.erb" do
  before(:each) do
    assign(:settings, [
      stub_model(Setting,
        :site_name => "Site Name",
        :meta_keywords => "Meta Keywords",
        :meta_description => "Meta Description"
      ),
      stub_model(Setting,
        :site_name => "Site Name",
        :meta_keywords => "Meta Keywords",
        :meta_description => "Meta Description"
      )
    ])
  end

  it "renders a list of settings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Site Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Meta Keywords".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Meta Description".to_s, :count => 2
  end
end
