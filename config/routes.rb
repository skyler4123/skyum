Rails.application.routes.draw do
  resources :products
  resources :gift_cards
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :branches
  resources :users
  get "signin", to: 'sessions#signin'
  post  "signin",to: 'sessions#create'
  delete "signout", to: 'sessions#destroy'
  get "signup", to: "sessions#signup"
  post "signup", to: "users#create"
  # Defines the root path route ("/")
  root "users#index"
end
