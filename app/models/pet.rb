class Pet < ApplicationRecord
  validates :name, :bio, :species, :breed, :age, presence: true

  scope :search_by_name, -> (pet_name) {where('name like ?', "%#{pet_name}%")}
end  