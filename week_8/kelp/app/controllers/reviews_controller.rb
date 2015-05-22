class ReviewsController < ApplicationController
	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		@rest_id = review_params[:restaurant_id]

		if @review.save
			redirect_to "/restaurants/#{@rest_id}"
		else
			render :new
		end
	end

	def show
		@review = Review.find(params[:id])
	end

	private
		def review_params
			params.require(:review).permit(:body, :author, :restaurant_id)
		end
end