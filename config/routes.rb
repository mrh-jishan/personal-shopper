# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        home#index
#                   contact GET    /contact(.:format)                                                                       home#new
#                           POST   /contact(.:format)                                                                       home#create
#            admin_products GET    /admin/products(.:format)                                                                products#products
#              transactions GET    /transactions(.:format)                                                                  transactions#index
#                           POST   /transactions(.:format)                                                                  transactions#create
#           new_transaction GET    /transactions/new(.:format)                                                              transactions#new
#          edit_transaction GET    /transactions/:id/edit(.:format)                                                         transactions#edit
#               transaction GET    /transactions/:id(.:format)                                                              transactions#show
#                           PATCH  /transactions/:id(.:format)                                                              transactions#update
#                           PUT    /transactions/:id(.:format)                                                              transactions#update
#                           DELETE /transactions/:id(.:format)                                                              transactions#destroy
#                 feedbacks GET    /feedbacks(.:format)                                                                     feedbacks#index
#                           POST   /feedbacks(.:format)                                                                     feedbacks#create
#              new_feedback GET    /feedbacks/new(.:format)                                                                 feedbacks#new
#             edit_feedback GET    /feedbacks/:id/edit(.:format)                                                            feedbacks#edit
#                  feedback GET    /feedbacks/:id(.:format)                                                                 feedbacks#show
#                           PATCH  /feedbacks/:id(.:format)                                                                 feedbacks#update
#                           PUT    /feedbacks/:id(.:format)                                                                 feedbacks#update
#                           DELETE /feedbacks/:id(.:format)                                                                 feedbacks#destroy
#                    orders GET    /orders(.:format)                                                                        orders#index
#                           POST   /orders(.:format)                                                                        orders#create
#                 new_order GET    /orders/new(.:format)                                                                    orders#new
#                edit_order GET    /orders/:id/edit(.:format)                                                               orders#edit
#                     order GET    /orders/:id(.:format)                                                                    orders#show
#                           PATCH  /orders/:id(.:format)                                                                    orders#update
#                           PUT    /orders/:id(.:format)                                                                    orders#update
#                           DELETE /orders/:id(.:format)                                                                    orders#destroy
#           product_approve PUT    /products/:product_id/approve(.:format)                                                  products#approve
#            product_reject PUT    /products/:product_id/reject(.:format)                                                   products#reject
#          product_comments GET    /products/:product_id/comments(.:format)                                                 comments#index
#                           POST   /products/:product_id/comments(.:format)                                                 comments#create
#       new_product_comment GET    /products/:product_id/comments/new(.:format)                                             comments#new
#      edit_product_comment GET    /products/:product_id/comments/:id/edit(.:format)                                        comments#edit
#           product_comment GET    /products/:product_id/comments/:id(.:format)                                             comments#show
#                           PATCH  /products/:product_id/comments/:id(.:format)                                             comments#update
#                           PUT    /products/:product_id/comments/:id(.:format)                                             comments#update
#                           DELETE /products/:product_id/comments/:id(.:format)                                             comments#destroy
#            product_orders GET    /products/:product_id/orders(.:format)                                                   orders#index
#                           POST   /products/:product_id/orders(.:format)                                                   orders#create
#         new_product_order GET    /products/:product_id/orders/new(.:format)                                               orders#new
#        edit_product_order GET    /products/:product_id/orders/:id/edit(.:format)                                          orders#edit
#             product_order GET    /products/:product_id/orders/:id(.:format)                                               orders#show
#                           PATCH  /products/:product_id/orders/:id(.:format)                                               orders#update
#                           PUT    /products/:product_id/orders/:id(.:format)                                               orders#update
#                           DELETE /products/:product_id/orders/:id(.:format)                                               orders#destroy
#                  products GET    /products(.:format)                                                                      products#index
#                           POST   /products(.:format)                                                                      products#create
#               new_product GET    /products/new(.:format)                                                                  products#new
#              edit_product GET    /products/:id/edit(.:format)                                                             products#edit
#                   product GET    /products/:id(.:format)                                                                  products#show
#                           PATCH  /products/:id(.:format)                                                                  products#update
#                           PUT    /products/:id(.:format)                                                                  products#update
#                           DELETE /products/:id(.:format)                                                                  products#destroy
#        product_categories GET    /product_categories(.:format)                                                            product_categories#index
#                           POST   /product_categories(.:format)                                                            product_categories#create
#      new_product_category GET    /product_categories/new(.:format)                                                        product_categories#new
#     edit_product_category GET    /product_categories/:id/edit(.:format)                                                   product_categories#edit
#          product_category GET    /product_categories/:id(.:format)                                                        product_categories#show
#                           PATCH  /product_categories/:id(.:format)                                                        product_categories#update
#                           PUT    /product_categories/:id(.:format)                                                        product_categories#update
#                           DELETE /product_categories/:id(.:format)                                                        product_categories#destroy
#                 addresses GET    /addresses(.:format)                                                                     addresses#index
#                           POST   /addresses(.:format)                                                                     addresses#create
#               new_address GET    /addresses/new(.:format)                                                                 addresses#new
#              edit_address GET    /addresses/:id/edit(.:format)                                                            addresses#edit
#                   address GET    /addresses/:id(.:format)                                                                 addresses#show
#                           PATCH  /addresses/:id(.:format)                                                                 addresses#update
#                           PUT    /addresses/:id(.:format)                                                                 addresses#update
#                           DELETE /addresses/:id(.:format)                                                                 addresses#destroy
#                   profile GET    /profile(.:format)                                                                       users#profile
#                     users POST   /auth/users(.:format)                                                                    users#create
#                  new_user GET    /auth/users/new(.:format)                                                                users#new
#                  sessions POST   /auth/sessions(.:format)                                                                 sessions#create
#               new_session GET    /auth/sessions/new(.:format)                                                             sessions#new
#                    logout GET    /auth/logout(.:format)                                                                   application#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do

  root :to => "home#index"
  get "contact" => "home#new"
  post "contact" => "home#create"
  get "admin/products/" => "products#products"


  resources :transactions
  resources :feedbacks
  resources :orders

  resources :products do
    put :approve, :to => "products#approve"
    put :reject, :to => "products#reject"
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
