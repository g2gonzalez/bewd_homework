Rails.application.routes.draw do
  
  #root
  root 'garages#index'

  #garage
  get 'cars/new' => 'garages#new'
  post 'cars' => 'garages#create'
  get 'cars/:id' => 'garages#show'

end
