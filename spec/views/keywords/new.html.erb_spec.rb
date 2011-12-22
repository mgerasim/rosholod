require 'spec_helper'

describe "keywords/new.html.erb" do
  before(:each) do
    assign(:keyword, stub_model(Keyword,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new keyword form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => keywords_path, :method => "post" do
      assert_select "input#keyword_name", :name => "keyword[name]"
    end
  end
end
