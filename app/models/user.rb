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

class User < ApplicationRecord
  validates :name, :email, :gender, :user_type, :password, presence: true
  validates :email, uniqueness: true
  validates :contact, :presence => true, :numericality => true, :length => {:minimum => 10, :maximum => 15}
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates_inclusion_of :gender, :in => %w( Male Female )
  validates :password, length: {in: 6..20}
  has_secure_password


  has_one :address, dependent: :delete
  accepts_nested_attributes_for :address
  has_many :comments

  has_many :products

  has_many :user_buyer, :class_name => 'Order', :foreign_key => 'user_buyer_id'
  has_many :user_customer, :class_name => 'Order', :foreign_key => 'user_customer_id'

  has_many :customer_user, :class_name => 'Transaction', :foreign_key => 'customer_user_id'

  before_save :set_user_type

  def user_country
    COUNTRIES.find {|country| country[:code] == self.address.country}
  end

  private


  def set_user_type
    self.user_type = USER_TYPES[:MEMBER]
  end

end
