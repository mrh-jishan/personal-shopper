class Feedback < ApplicationRecord
  validates :name, :email, :feedback, :presence => true
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :feedback, length: {minimum: 120}
end
