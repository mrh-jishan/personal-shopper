class Transaction < ApplicationRecord
  belongs_to :buyer_user,  :class_name => 'User'
  belongs_to :customer_user,  :class_name => 'User'
end
