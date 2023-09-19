Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  resources :customers
  resources :organizers
  # Defines the root path route ("/")
  root "users#index"
end
