Rails.application.routes.draw do
  resources :payments
  resources :gift_cards
  resources :payment_partners
  resources :order_products
  resources :products
  resources :orders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :shops
  resources :shop_owners
  resources :branches
  resources :categories
  resources :users
  resources :customers
  get "signin", to: 'sessions#signin'
  post  "signin",to: 'sessions#create'
  delete "signout", to: 'sessions#destroy'
  get "signup", to: "sessions#signup"
  post "signup", to: "users#create"
  # Defines the root path route ("/")
  root "users#index"
end
