Rails.application.routes.draw do

  root :to => "home#index"

  resources :transactions
  resources :feedbacks
  resources :orders
  resources :products do
    resources :comments
    resources :orders
  end
  resources :product_categories
  resources :addresses

  # resource :users, only: [:show]
  get '/profile' => 'users#profile'

  scope :auth do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create]
    get '/logout' => 'application#destroy'
  end

  # get '*', :to => 'not_found#index!'
  # get '*path', to: 'not_found#index', :constraints => lambda {|request| request.path =~ /.+\.users/}

  # match "*path", to: "not_found#index", via: :all
end
