class Hunt < ActiveRecord::Base
  belongs_to :creator, class_name: "User", foreign_key: :user_id

  has_many :hunt_players
  has_many :players, through: :hunt_players, source: :user
  has_many :clues
  has_many :images
end
