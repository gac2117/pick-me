class Restaurant < ApplicationRecord
	has_many :tags	
	validates :name, presence: true
	validates :location, presence: true
end
