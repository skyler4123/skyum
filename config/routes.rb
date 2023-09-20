Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :shops
  resources :shop_owners
  resources :branches
  resources :categories
  resources :users
  resources :customers
  # Defines the root path route ("/")
  root "users#index"
end
