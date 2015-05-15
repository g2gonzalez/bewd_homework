Rails.application.routes.draw do
  get '/' => 'dogs#index'
  get 'dogs/new' => 'dogs#new'
  post 'dogs' => 'dogs#create'
  get 'dogs/:id' => 'dogs#show'
end
