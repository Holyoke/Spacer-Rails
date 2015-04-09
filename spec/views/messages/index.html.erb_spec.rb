require 'rails_helper'

RSpec.describe "messages/index", :type => :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :text => "Text",
        :corrections => "Corrections",
        :converted_text => "Converted Text"
      ),
      Message.create!(
        :text => "Text",
        :corrections => "Corrections",
        :converted_text => "Converted Text"
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Corrections".to_s, :count => 2
    assert_select "tr>td", :text => "Converted Text".to_s, :count => 2
  end
end
