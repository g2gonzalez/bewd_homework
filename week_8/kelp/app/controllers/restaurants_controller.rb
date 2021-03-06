class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)

		if @restaurant.save
			redirect_to '/'
		else
			render :new
		end
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@rest_id    = params[:id]  #grab restaurant id to add to review record
		@review     = Review.new  #set variable to add review in retaurant show page
	end

	private
		def restaurant_params
			params.require(:restaurant).permit(:name, :address)
		end
end