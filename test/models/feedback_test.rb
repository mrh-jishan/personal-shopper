# == Schema Information
#
# Table name: feedbacks
#
#  id         :bigint           not null, primary key
#  name       :string
#  feedback   :text
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
