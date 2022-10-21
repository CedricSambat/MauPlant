class Plant < ApplicationRecord
  belongs_to :garden
  has_one_attached :photo
  
end
