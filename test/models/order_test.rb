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

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
