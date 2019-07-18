class Transaction < ApplicationRecord
  belongs_to :customer_user, :class_name => 'User'

  validates :total, presence: true
end
