class HuntPlayer < ActiveRecord::Base
  belongs_to :hunt
  belongs_to :player, class_name: "User", foreign_key: :user_id
end
