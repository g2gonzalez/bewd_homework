class ZenController < ApplicationController
	def quote
		@rand_quote = HTTParty.get('https://api.github.com/zen').parsed_response
		@lorem_pixel = 'http://lorempixel.com/300/200/nature/'
		@google_search = @rand_quote.tr(" ","+")
		#@google_search = @rand_quote.split.join('+')
	end
end