=begin
Write a Ruby script using the USA Today Booklist API to do the following:

Output the title, author and brief description of the first 20 books from the most recently published 
list (they are published weekly). Only output the first 20 Fiction books. Skip any books that are not Fiction.
=end


require 'httparty'

key = 'ec9dksqd9umanzepkyq2c89c'																						#declare api key
url = 'http://api.usatoday.com/open/bestsellers/books/ThisWeek?api_key='		#declare api url
api_call = url + key    																										#create api call

usatoday = HTTParty.get(api_call)

parsed = usatoday.parsed_response																						#grab parsed response

books = parsed['BookLists'][0]['BookListEntries']
count = 0																																		#variable for keeping count
puts "------------------------------"

books.each do |book|																												
	if count != 20 && book['Class'] == 'Fiction'															#grab first 20 fiction books
		puts "#{book['Title']} by #{book['Author']}"
		if book['BriefDescription'] != ' '
			puts book['BriefDescription']
		end
		puts "------------------------------"
		count += 1
	end
end

