class User < ActiveRecord::Base
  has_secure_password

  has_many :hunts
  has_many :hunt_players
  has_many :hunts, through: :hunt_players
end
