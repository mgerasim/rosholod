require 'spec_helper'

describe "keywords/index.html.erb" do
  before(:each) do
    assign(:keywords, [
      stub_model(Keyword,
        :name => "Name"
      ),
      stub_model(Keyword,
        :name => "Name"
      )
    ])
  end

  it "renders a list of keywords" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
