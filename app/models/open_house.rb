class OpenHouse < ActiveRecord::Base
	belongs_to :user
	def self.search_for(query)
		validates_presence_of :title, :amount
		validates :title, length: { minimum: 1}
		def self.search_for(query)
	where('name LIKE :query OR description LIKE :query', query: "%#{query}%")
end
end
end
