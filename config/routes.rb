Rails.application.routes.draw do

  root :to => "home#index"

  scope '/admin' do
    resources :transactions
    resources :feedbacks
    resources :orders
    resources :comments
    resources :products
    resources :product_categories
    resources :addresses
    resources :users  
  end

  scope '/customer' do
    resources :transactions
    resources :feedbacks
    resources :orders
    resources :comments
    resources :products
    resources :product_categories
    resources :addresses
    resources :users  
  end


  scope '/auth' do
    resources :transactions
    resources :feedbacks
    resources :orders
    resources :comments
    resources :products
    resources :product_categories
    resources :addresses
    resources :users  
  end

  resources :transactions
  resources :feedbacks
  resources :orders
  resources :comments
  resources :products
  resources :product_categories
  resources :addresses
  resources :users
end
