require 'spec_helper'

describe "postmails/edit.html.erb" do
  before(:each) do
    @postmail = assign(:postmail, stub_model(Postmail,
      :recipiend => "MyString",
      :subject => "MyString",
      :fullname => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :message => "MyString"
    ))
  end

  it "renders the edit postmail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => postmails_path(@postmail), :method => "post" do
      assert_select "input#postmail_recipiend", :name => "postmail[recipiend]"
      assert_select "input#postmail_subject", :name => "postmail[subject]"
      assert_select "input#postmail_fullname", :name => "postmail[fullname]"
      assert_select "input#postmail_phone", :name => "postmail[phone]"
      assert_select "input#postmail_email", :name => "postmail[email]"
      assert_select "input#postmail_message", :name => "postmail[message]"
    end
  end
end
