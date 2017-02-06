class User < ApplicationRecord

	validates :name, :password, presence: true
	attr_accessor :name, :email, :password, :htoelconfirm, :flightconfirm, :address, :birthday

  # name should be 2 characters
  # email should be 4 characters or more
  # email should be formatted like an email

  VALID_EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
                    uniqueness: { case_sensitive: false , on: :create }
  # unique@uniqueIsCool.com
  # validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  # validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
has_secure_password
  validates :password, presence: true, length: { minimum: 6 }


  validates :name, presence: true, length: { minimum: 2 }

  # validates :terms, acceptance: true
  validates :password, confirmation: true
  validates :username, exclusion: { in: %w(admin superuser) }
  # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  # validates :age, inclusion: { in: 0..9 }
  validates :name, length: { maximum: 30 }
  # validates :age, numericality: true
  # validates :username, presence: true
  # validates :username, uniqueness: true 

end

