# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  comment    :text
#  product_id :bigint
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :comment, :presence => true
end
