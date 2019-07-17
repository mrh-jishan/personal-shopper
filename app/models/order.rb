class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user_buyer, :class_name => 'User'
  belongs_to :user_customer, :class_name => 'User'

  validates :status, presence: true
end
