class PokedexController < ApplicationController
	#names, abilities and types

	def index
		pokedex = HTTParty.get('http://pokeapi.co/api/v1/pokedex/1/').parsed_response
		@pokemons = pokedex['pokemon']
	end

	def details
		resource_uri = params[:path].to_s
		url = "http://pokeapi.co/"
		pokemon_url = url + resource_uri
		@details = HTTParty.get(pokemon_url).parsed_response	 #grab pokemon chosen details
		
		if @details['sprites'].empty?
			@image = false
		else
			sprite = @details['sprites'][0]['resource_uri'].to_s
			sprite_url = url + sprite
			@image = HTTParty.get(sprite_url).parsed_response		#grab pokemon chosen image
		end
	end

end