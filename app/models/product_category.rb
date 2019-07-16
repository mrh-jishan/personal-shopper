class ProductCategory < ApplicationRecord
  has_many :products
  validates :name, :active, presence: true
end
