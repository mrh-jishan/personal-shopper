class Address < ApplicationRecord
  validates :country, :address, :state, :postcode, presence: true
  validates :postcode, length: {is: 5}
  belongs_to :user
end
