class DogsController < ApplicationController
	def index
		@dogs = Dog.all
	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.new(dog_params)

		if @dog.save
			redirect_to '/'
		else
			render :new
			@errors = @dog.errors.full_messages
		end
	end

	def show
		@dog = Dog.find(params['id']) #or Dog.find(params[:id])
	end

	def edit
		@dog = Dog.find(params[:id])
	end

	def update
		@dog = Dog.find(params[:id])

		if @dog.update(dog_params)
			redirect_to '/'
		else
			render :edit
		end
	end

	#def destroy
		#@dog = Dog.find(params[:id])
		#@dog.destroy

		#redirect_to '/'
	#end

	private
		def dog_params
			params.require(:dog).permit(:name, :breed, :color, :size, :age)
		end
end