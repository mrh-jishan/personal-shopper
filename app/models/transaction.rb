class Transaction < ApplicationRecord
  belongs_to :customer_user, :class_name => 'User'

  validates :total, presence: true


  after_create :change_user_order_to_paid


  private

  def change_user_order_to_paid
    self.customer_user.user_buyer.each do |order|
      puts "customer  orders #{order}"
      order.update_order_to_paid
    end
  end
end
