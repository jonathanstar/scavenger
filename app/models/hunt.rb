class Hunt < ActiveRecord::Base
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :hunt_players
  
  has_many :players, class_name: 'User', foreign_key: 
  'player_id', through: :hunt_players, source: :player

  has_many :clues
  has_many :images
end
