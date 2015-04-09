require 'rails_helper'

RSpec.describe "messages/new", :type => :view do
  before(:each) do
    assign(:message, Message.new(
      :text => "MyString",
      :corrections => "MyString",
      :converted_text => "MyString"
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input#message_text[name=?]", "message[text]"

      assert_select "input#message_corrections[name=?]", "message[corrections]"

      assert_select "input#message_converted_text[name=?]", "message[converted_text]"
    end
  end
end
