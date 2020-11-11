Rails.application.routes.draw do
  resources :specialists
  resources :gallerylocations
  resources :artworks
  resources :viewings
  resources :users
  resources :sessions
  # root 'artworks#index'

  
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  post '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions', to: 'sessions#create', as: 'login'
  
end
