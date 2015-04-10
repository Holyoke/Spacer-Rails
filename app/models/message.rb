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
require "byebug"

class Message < ActiveRecord::Base
	validates :body, presence: true

	before_validation :correct_text, on: :new

	def correct_text
		self.converted_text = ""
		self.corrections = ""

		body.each_char.with_index do |c, i|
			if c == "."
				check_period(i)
			else
				self.converted_text += c
				self.corrections += c
			end
		end

		nil
	end

	def letter?(lookAhead)
	  lookAhead =~ /[A-Za-z]/
	end

	def check_period(i)

		#check if the period is the last place
		if self.body[i + 1].nil?
			self.converted_text += "."
			self.corrections += "."
		#check if slot after period is a letter AND it's not the last place
		elif self.body[i + 1] != " " 
			self.converted_text += ". "
			self.corrections += "<mark>.</mark>"
		end

		nil
	end
end
