# == Schema Information
#
# Table name: orders
#
#  id               :bigint           not null, primary key
#  product_id       :bigint
#  user_buyer_id    :bigint
#  user_customer_id :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  status           :integer
#

class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user_buyer, :class_name => 'User'
  belongs_to :user_customer, :class_name => 'User'

  validates :status, presence: true


  def order_status
    ORDER_STATUES.key(self.status).to_s.humanize
  end

  def update_order_to_paid
    self.status = ORDER_STATUES[:PAID]
    save
  end

end
