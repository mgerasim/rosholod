require 'spec_helper'

describe "keywords/edit.html.erb" do
  before(:each) do
    @keyword = assign(:keyword, stub_model(Keyword,
      :name => "MyString"
    ))
  end

  it "renders the edit keyword form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => keywords_path(@keyword), :method => "post" do
      assert_select "input#keyword_name", :name => "keyword[name]"
    end
  end
end
