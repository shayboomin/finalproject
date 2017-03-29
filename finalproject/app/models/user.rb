class User < ApplicationRecord
  attr_accessor :password_confirmation
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    case_sensitive: false,
                    format: { with: VALID_EMAIL_REGEX, on: create }


  validates :password, presence: true, length: { minimum: 6 }
  validates :name, presence: true, length: { minimum: 2 }


end

