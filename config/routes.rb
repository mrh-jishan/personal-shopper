Rails.application.routes.draw do
  resources :transactions
  resources :feedbacks
  resources :orders
  resources :comments
  resources :products
  resources :product_categories
  resources :addresses
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end