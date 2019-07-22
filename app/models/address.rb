# == Schema Information
#
# Table name: addresses
#
#  id         :bigint           not null, primary key
#  address    :text
#  state      :string
#  postcode   :integer
#  country    :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Address < ApplicationRecord
  validates :country, :address, :state, :postcode, presence: true
  validates :postcode, length: {is: 5}
  belongs_to :user
end
