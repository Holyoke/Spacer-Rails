# == Schema Information
#
# Table name: messages
#
#  id             :integer          not null, primary key
#  body           :string           not null
#  corrections    :string
#  converted_text :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null

class Message < ActiveRecord::Base
	validates :body, presence: true

	before_validation :correct_text, on: :new

	def correct_text
		self.converted_text = ""
		self.corrections = ""

		body.each_char.with_index do |char, x|
			if char == "."
				check_period(x)
			else
				self.converted_text += char
				self.corrections += char
			end
		end

		nil
	end

	def check_period(x)
		#check if the period is the last place
		if x == (self.body.size - 1)
			self.converted_text += "."
			self.corrections += "."
		#check if char after period is not a space
		elsif self.body[x + 1] != " " 
			self.converted_text += ". "
			self.corrections += "<mark>.</mark>"
		end

		nil
	end
end
