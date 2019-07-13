class User < ApplicationRecord
  has_secure_password
  has_one :address
  has_many :comments

  has_many :user_buyer, :class_name => 'Order', :foreign_key => 'user_buyer_id'
  has_many :user_customer, :class_name => 'Order', :foreign_key => 'user_customer_id'

  has_many :buyer_user, :class_name => 'Transaction', :foreign_key => 'buyer_user_id'
  has_many :customer_user, :class_name => 'Transaction', :foreign_key => 'customer_user_id'
end
