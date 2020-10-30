module Api
  module V1
    class PetSerializer < ActiveModel::Serializer
      attributes :id, :name, :species, :age, :breed, :bio
      
    end  
  end  
end
