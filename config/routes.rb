Rails.application.routes.draw do
  resources :specialists
  resources :gallerylocations
  resources :artworks
  resources :viewings
  resources :users
  root 'artworks#index'

  resources :sessions
  # delete '/sessions/page_reset', to: 'sessions#page_reset', as: 'page_reset'
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
