class Plant < ApplicationRecord
  has_many :garden_plant
  has_one_attached :photo
  # validate_id, presence: true
end
