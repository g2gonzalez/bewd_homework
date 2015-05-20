Rails.application.routes.draw do
  get '/'                 => 'dogs#index'
  get '/dogs/new'         => 'dogs#new'
  post '/dogs'            => 'dogs#create'
  get '/dogs/:id'         => 'dogs#show'
  get '/dogs/:id/edit'    => 'dogs#edit'
  patch '/dogs/:id'       => 'dogs#update'
  delete '/dogs/:id'      => 'dogs#destroy'
end
