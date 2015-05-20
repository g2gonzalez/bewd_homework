class HomeController < ApplicationController
	def index
		@books = Book.all  #get all book records
		@authors = Author.all  #get all author records
	end
end