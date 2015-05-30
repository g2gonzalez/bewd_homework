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
		key = "2eb9dd8f85fb496f52538c58a314031c"  #api key
		filter = "now_playing"  #search filter
		url = "http://api.themoviedb.org/3/movie/#{filter}?api_key=#{key}"  #base url
		response = HTTParty.get(url).parsed_response
		@now_playing = response['results']
		
		#we loop here because we need to grab the imdb_id from each movie and add it to the
		#original hash so that we can use it in the view
		count = 0
		@now_playing.each do |movie|
			if count < 8
				movie_id = movie['id']  #grab movie id to find the movies imdb id
				imdb_url = "http://api.themoviedb.org/3/movie/#{movie_id}?api_key=#{key}"  #movie detail url
				temp = HTTParty.get(imdb_url)
				@imdb_id = temp['imdb_id']  #grab movies imdb id
				movie["imdb_id"] = @imdb_id  #add movies imdb id to the original hash
				count += 1
			end
		end
	end

	private
		def movie_params
			params.require(:movie).permit(:title, :location, :user_id)  #only allow these values to get added
		end

end