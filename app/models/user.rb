class User < ActiveRecord::Base
  has_secure_password

  has_many :created_hunts, class_name: 'Hunt', foreign_key: 'creator_id'
  has_many :hunt_players

  has_many :played_hunts, class_name: 'Hunt', foreign_key: 'hunt_id', through: :hunt_players, source: :hunt
end
