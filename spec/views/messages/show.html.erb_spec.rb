require 'rails_helper'

RSpec.describe "messages/show", :type => :view do
  before(:each) do
    @message = assign(:message, Message.create!(
      :text => "Text",
      :corrections => "Corrections",
      :converted_text => "Converted Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/Corrections/)
    expect(rendered).to match(/Converted Text/)
  end
end
