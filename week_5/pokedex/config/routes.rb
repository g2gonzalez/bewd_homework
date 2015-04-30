Rails.application.routes.draw do
  get '/' => 'pokedex#index'

  get '/details' => 'pokedex#details'
end
