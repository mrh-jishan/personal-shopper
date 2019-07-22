# == Schema Information
#
# Table name: product_categories
#
#  id         :bigint           not null, primary key
#  name       :string
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProductCategory < ApplicationRecord
  has_many :products
  validates :name, :active, presence: true
end
