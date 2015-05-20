class Dog < ActiveRecord::Base
	validates_presence_of :name, :breed, :color
end
