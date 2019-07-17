class Product < ApplicationRecord
  belongs_to :product_category
  has_many :comments, :dependent => :delete_all
  has_many :orders, :dependent => :delete_all
  belongs_to :user
  validates :name, :description, :price, :presence => true
  validates :price, numericality: true

  has_one_attached :image

  before_save :set_status


  private

  def set_status
    self.status = true
  end
end
