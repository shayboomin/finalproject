class User < ApplicationRecord
	validates :name, :email, :password, presence: true
	attr_accessor :name, :email, :password, :htoelconfirm, :flightconfirm, :address, :birthday
end

