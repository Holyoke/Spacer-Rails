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
		self.converted_text = self.body.split(".").join(". ")
		self.corrections = self.body.split(".").join("<mark>.</mark>")

		#check if there's a period at the end
		if self.body.last == "."
			self.converted_text += "."
			self.corrections += "."
		end
	end

	def check_period(x)
	end
end
