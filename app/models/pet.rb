class Pet < ApplicationRecord
  validates :name, :species, :age, :bio, presence: true
end  