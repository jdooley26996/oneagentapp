class Expense < ActiveRecord::Base
	belongs_to :user

	#ensure that user_id is present
	validates :user_id, presence: true
	#ensure that a title is present and at least 4 characters long
	validates :title, length: { minimum: 4}, presence:true
	#ensure that an amount is present
	validates :amount, length: { minimum: 2}, presence:true

end
