Rails.application.routes.draw do
  root 'restaurants#index'

  resources :restaurants
  resources :reviews
  
end
