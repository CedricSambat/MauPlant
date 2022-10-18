class Categorie < ApplicationRecord
  belongs_to :plant
  # validate :name, presence: true, uniquness: true
end
