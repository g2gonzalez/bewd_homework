class WelcomeController < ApplicationController
	def index
		@movies = Movie.all
		@d_user = User.find(1)
		@j_user = User.find(2)
	end
end