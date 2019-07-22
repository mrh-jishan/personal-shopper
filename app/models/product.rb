# == Schema Information
#
# Table name: products
#
#  id                  :bigint           not null, primary key
#  name                :string
#  description         :text
#  price               :float
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_category_id :bigint
#  user_id             :bigint
#  status              :integer          default(1)
#

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
