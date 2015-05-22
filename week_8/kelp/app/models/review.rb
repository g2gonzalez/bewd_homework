class Review < ActiveRecord::Base
	validates_presence_of :body
	belongs_to :restaurant
end
