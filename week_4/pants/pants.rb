=begin
Build a Sinatra app that does the following:

Ask the user what Zipcode they are in.
Once they submit their Zipcode, tell them whether today is a Pants Day or a Shorts Day.
Also include the temperature high and low.
=end


require 'sinatra'
require 'httparty'
require 'forecast_io'																	#using ruby forecast wrapper

get '/' do
	erb :home																							#use home template
end

post '/pants' do
	url = 'http://api.zippopotam.us/us/'					
	@zipcode = params['zipcode']													#grab zipcode entered by user
	api_call = url + @zipcode

	zippopotamus = HTTParty.get(api_call)					
	parsed = zippopotamus.parsed_response
	@latitude = parsed['places'][0]['latitude']						#grab latitude using user zipcode from api
	@longitude = parsed['places'][0]['longitude']					#grab longtitude using user zipcode from api

	ForecastIO.api_key = '1d0cd86d7c4252307904398abf4743a8'
	forecast = ForecastIO.forecast(@latitude, @longitude)	#use lat & long to grab forecast needed
	@current_temp = forecast.currently.temperature 				#grab current temp from api
	@high_temp = forecast.daily.data.first.temperatureMax #grab high temp from api
	@low_temp = forecast.daily.data.first.temperatureMin 	#grab low temp from api


	# @hourly = forecast.hourly.data.first.temperature
	@hourly = forecast.hourly.data

	@hourly.each do |hour|
		puts "#{hour.temperature}"

	end




	erb :result																						#use home result
end