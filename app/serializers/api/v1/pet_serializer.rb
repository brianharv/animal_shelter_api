module Api
  module V1
    class PetSerializer < ActiveModel::Serializer
      attributes :id, :name, :type, :age, :breed
      
    end  
  end  
end
