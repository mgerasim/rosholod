require 'spec_helper'

describe "postmails/index.html.erb" do
  before(:each) do
    assign(:postmails, [
      stub_model(Postmail,
        :recipiend => "Recipiend",
        :subject => "Subject",
        :fullname => "Fullname",
        :phone => "Phone",
        :email => "Email",
        :message => "Message"
      ),
      stub_model(Postmail,
        :recipiend => "Recipiend",
        :subject => "Subject",
        :fullname => "Fullname",
        :phone => "Phone",
        :email => "Email",
        :message => "Message"
      )
    ])
  end

  it "renders a list of postmails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Recipiend".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fullname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
