class BooksController < ApplicationController 
	def new
		@authors = Author.all  #grab authors to show available author choices
		@book    = Book.new
	end

	def create
		@book = Book.new(book_params)

		if @book.save
			redirect_to '/'
		else
			render :new
		end
	end

	private
		def book_params
			params.require(:book).permit(:title, :genre, :year, :author_id)  #strong params for book records
		end
end