Rails.application.routes.draw do
  root 'home#index'

  resources :authors    #create all author routes
  resources :books      #create all book routes
end
