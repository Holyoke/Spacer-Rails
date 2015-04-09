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

	attr_accessor :converted_text, :corrections, :body

	def correct_text
		self.converted_text = body.gsub(".", ". ")
	end
end
