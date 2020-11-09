Rails.application.routes.draw do
  resources :specialists
  resources :gallerylocations
  resources :artworks
  resources :viewings
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
