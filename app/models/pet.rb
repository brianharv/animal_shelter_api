class Pet < ApplicationRecord
  validates :name, :bio, :species, :breed, :age, presence: true

  scope :search_by_name, -> (pet_name) {where('name ilike ?', "%#{pet_name}%")}
end  