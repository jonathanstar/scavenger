class Clue < ActiveRecord::Base
    belongs_to :hunt
    has_many :clue_images
    has_many :images, through: :clue_images
end
