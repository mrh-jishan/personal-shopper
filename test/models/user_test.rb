# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  gender          :string
#  contact         :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_type       :string           default("member"), not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
