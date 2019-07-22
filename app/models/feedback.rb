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

class Feedback < ApplicationRecord
  validates :name, :email, :feedback, :presence => true
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :feedback, length: {minimum: 20}
end
