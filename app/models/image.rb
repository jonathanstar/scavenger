class Image < ActiveRecord::Base
  belongs_to :hunt
  has_many :clue_images
  has_many :clues, through: :clue_images
end
