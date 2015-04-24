=begin
Write a Ruby script using the USA Today Booklist API to do the following:
In the sinatra app from bonus 2, allow users to select from any of the weeks in the API call. Then 
show them the top 20 books for that week. This will be a multi-page app.
=end


require 'sinatra'
require 'httparty'

get '/' do
	erb :home																									#use home template
end

post '/books' do				
	@week = params['week'].to_i - 1														#grab week user chose to view
	key = 'ec9dksqd9umanzepkyq2c89c'				
	url = 'http://api.usatoday.com/open/bestsellers/books/ThisWeek?api_key='
	api_call = url + key
	puts api_call

	usatoday = HTTParty.get(api_call)				
	parsed = usatoday.parsed_response
	@books = parsed['BookLists'][@week]['BookListEntries']		#grab information from user chosen week

	erb :book_list																						#use book_list template
end
