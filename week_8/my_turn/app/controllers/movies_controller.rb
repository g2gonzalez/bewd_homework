class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
		@user_id = movie_params[:user_id]

		if @movie.save
			redirect_to "/"
		else
			render :new
		end
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def now_playing
		key = "2eb9dd8f85fb496f52538c58a314031c"
		filter = "now_playing"
		url = "http://api.themoviedb.org/3/movie/#{filter}?api_key=#{key}"
		response = HTTParty.get(url).parsed_response
		@now_playing = response['results']
	end

	private
		def movie_params
			params.require(:movie).permit(:title, :location, :user_id)
		end

end