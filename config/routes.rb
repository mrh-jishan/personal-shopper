Rails.application.routes.draw do

  root :to => "home#index"

  # resource :admin do
  #   get "home" => "home#admin"
  # end
  #
  # resource :admin do
  #   get "home" => "home#customer"
  # end


  resources :transactions
  resources :feedbacks
  resources :orders
  resources :products do
    resources :comments
    resources :orders
  end
  resources :product_categories
  resources :addresses

  scope :auth do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create]
    get '/logout' => 'application#destroy'
  end
  match "*path", to: "not_found#index", via: :all
end
