class User < ApplicationRecord
  attr_accessor :password_digest
  has_secure_password
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: true,
                    case_sensitive: false,
                    format: { with: VALID_EMAIL_REGEX, on: create }


  validates :password, presence: true, length: { minimum: 6 }, confirmation: true
  validates :name, presence: true, length: { minimum: 2 }

  validates :name, length: { maximum: 30 }


end

