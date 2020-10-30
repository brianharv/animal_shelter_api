class Pet < ApplicationRecord
  validates :name, :bio, :species, :breed, :age, presence: true
end  