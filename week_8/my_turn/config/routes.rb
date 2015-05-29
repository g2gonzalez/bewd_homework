Rails.application.routes.draw do

  root 'welcome#index'
  resources :users
  resources :movies
  get '/now-playing' => 'movies#now_playing'

end