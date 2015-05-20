class AuthorsController < ApplicationController
	def show
    @author = Author.find(params['id'])  #show author chosen by finding id for author
  end

	def new
    @author  = Author.new  #create a new nil author record
  end

  def create
    @author = Author.new(author_params)  #create author record with corresponding parameters

    if @author.save  #actually save the record to the db if valid
      redirect_to '/'
    else
      render :new  #if record is not valid then send user back to new page
    end
  end

	private
		def author_params		
			params.require(:author).permit(:name)  #strong parameters for author
		end
end