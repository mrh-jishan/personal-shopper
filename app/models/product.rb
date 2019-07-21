class Product < ApplicationRecord
  belongs_to :product_category
  has_many :comments, :dependent => :delete_all
  has_many :orders, :dependent => :delete_all
  belongs_to :user
  validates :name, :description, :price, :presence => true
  validates :price, numericality: true

  has_one_attached :image

  before_save :set_status

  def product_status
    PRODUCT_STATUS.key(self.status).to_s.humanize
  end

  private

  def set_status
    self.status = PRODUCT_STATUS[:CREATED]
  end
end
