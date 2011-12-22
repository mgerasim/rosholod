require 'spec_helper'

describe "settings/edit.html.erb" do
  before(:each) do
    @setting = assign(:setting, stub_model(Setting,
      :site_name => "MyString",
      :meta_keywords => "MyString",
      :meta_description => "MyString"
    ))
  end

  it "renders the edit setting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => settings_path(@setting), :method => "post" do
      assert_select "input#setting_site_name", :name => "setting[site_name]"
      assert_select "input#setting_meta_keywords", :name => "setting[meta_keywords]"
      assert_select "input#setting_meta_description", :name => "setting[meta_description]"
    end
  end
end
