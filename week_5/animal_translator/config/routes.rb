Rails.application.routes.draw do
  get '/' => 'mainframe#home'

  get '/login' => 'mainframe#login'

  post '/vault' => 'mainframe#vault'

  get '/super_secret' => 'mainframe#super_secret'

  get '/failure' => 'mainframe#failure'
end
