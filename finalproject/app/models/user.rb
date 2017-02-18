class User < ApplicationRecord

	validates :name, :password, presence: true
	# attr_accessor :name, :email, :password, :hotelconfirm, :flightconfirm, :address, :birthday, :password_confirmation

  # name should be 2 characters
  # email should be 4 characters or more
  # email should be formatted like an email

  VALID_EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i

  # unique@uniqueIsCool.com
  # validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  # validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  #has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, confirmation: true

  
end

