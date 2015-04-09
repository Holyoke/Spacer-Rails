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

	before_validation :correct_text

	protected
	def correct_text
		self.converted_text = body.gsub(".", ". ")
		self.corrections = body.gsub(".", "<mark>.</mark>")
	end
end
