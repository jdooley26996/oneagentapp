class Expense < ActiveRecord::Base
	belongs_to :user
def self.search_for(query)
		validates_presence_of :title, :amount, :transaction_date
		validates :title, length: { minimum: 1}
		def self.search_for(query)
	where('name LIKE :query OR description LIKE :query', query: "%#{query}%")
end
end
	#ensure that user_id is present
	# validates :user_id, presence: true
	#ensure that a title is present and at least 4 characters long
	# validates :title, length: { minimum: 4}, presence:true
	#ensure that an amount is present
#	validates :transaction_date, {minimum: 0} presence:true
	# validates :amount, length: { minimum: 2}, presence:true

end

def self.to_csv(all_expenses)
	attributes = %w{id title amount}
	CSV.generate(options) do |csv|
		csv << attributes
		all.each do |expense|
			 csv << expense.attributes.map{ |attr| expense.send(attr)}

		end
	end 
	def expense
   ActionController::Base.helpers.number_to_currency(self[:expense])
end
end