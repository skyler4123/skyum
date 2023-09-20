Rails.application.routes.draw do
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  resources :customers
  # Defines the root path route ("/")
  root "users#index"
end
