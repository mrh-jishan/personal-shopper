class Product < ApplicationRecord
  belongs_to :product_category
  has_many :comments
  belongs_to :user
  validates :name, :description, :image, :price, :presence => true

  before_save :set_status


  private

  def set_status
    self.status = true
  end
end
