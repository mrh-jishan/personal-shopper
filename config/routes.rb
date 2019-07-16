Rails.application.routes.draw do

  root :to => "home#index"

  # namespace :admin do
  resources :transactions
  resources :feedbacks
  resources :orders
  resources :comments
  resources :products
  post 'comment' => 'products#comment'
  resources :product_categories
  resources :addresses
  # resources :users
  # end

  # namespace :customer do
  #   resources :transactions
  #   resources :feedbacks
  #   resources :orders
  #   resources :comments
  #   resources :products
  #   resources :product_categories
  #   resources :addresses
  #   resources :users
  # end


  scope :auth do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create]
    get '/logout' => 'application#destroy'
  end
  match "*path", to: "not_found#index", via: :all
end
