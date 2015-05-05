class GaragesController < ApplicationController
	def index
		@cars = Car.all
	end
end