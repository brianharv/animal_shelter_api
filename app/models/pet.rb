class Pet < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :breed, presence: true
  validates :species, presence: true
  validates :breed, presence: true
end  