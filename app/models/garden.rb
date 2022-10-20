class Garden < ApplicationRecord
  belongs_to :user
  has_many :plants, through: :garden_plant
end
