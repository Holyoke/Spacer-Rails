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
	validates :text, presence: true

	attr_reader :converted_text, :corrections, :text

	def correct_text
		# converted_text = @text.gsub(".", ". ")
		@text
	end
end
