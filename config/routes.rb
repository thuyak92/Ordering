Rails.application.routes.draw do

  root 'main#index'

  resources :users
  resources :orders
  resources :items
  resources :categories
  
end
