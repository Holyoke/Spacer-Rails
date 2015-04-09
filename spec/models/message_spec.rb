require 'rails_helper'

RSpec.describe Message, :type => :model do

	context "Validations" do 
		let(:message) {Message.new}

		it "does not validate lack of text" do
			expect(message).not_to be_valid
		end

		it "validates presence of text" do 
			message["text"] = "abc.def"

			expect(message).to be_valid
		end
	end

	context "Corrections" do 
		it "adds a space after a period betwen strings"
	end


end
