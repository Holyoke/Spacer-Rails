# == Schema Information
#
# Table name: messages
#
#  id             :integer          not null, primary key
#  text           :string           not null
#  corrections    :string
#  converted_text :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Message, :type => :model do

	context "Validations" do 
		let(:message) {Message.new}

		it "does not validate lack of text" do
			expect(message).not_to be_valid
		end

		it "validates presence of text" do 
			message["body"] = "abc.def"

			expect(message).to be_valid
		end
	end

	context "Corrections" do 

		it "adds a space after a period between strings" do
			message = Message.new(body: "abc.def")
			answer = "abc. def"
			
			expect(message.converted_text).to eq(answer)
		end
	end


end
