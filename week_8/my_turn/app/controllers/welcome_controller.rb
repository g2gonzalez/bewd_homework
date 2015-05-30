class WelcomeController < ApplicationController
	def index
		@movies = Movie.all
		@users = User.all
	end
end