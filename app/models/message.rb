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
#

class Message < ActiveRecord::Base
	validates :body, presence: true

	before_validation :correct_text, on: :new

	def correct_text
		self.converted_text = self.body
		self.corrections = self.body

		body.each_char.with_index do |c, i|
			if c == "."
				check_period(i)
			end
		end

		nil
	end

	def check_period(i)
		self.converted_text = body.sub(".", ". ")
		self.corrections = body.sub(".", "<mark>.</mark ")
	end
end
