module Api
  module V1
    class PetsController < ApplicationController 


    def index # GET http://localhost:3000/api/v1/pets
      @pets = Pet.all
      json_response(@pets)
    end

    def show
      @pets = Pet.find(params[:id])
      json_response(@pet)
    end
    
    def create
      @pet = Pet.create(pet_params)
      json_response(@pet)
    end
    
    def update
      @pet = Pet.find(params[:id])
      @pet.update(pet_params)
    end  

    def destroy
      @pet = Pet.find(params[:id])
      @pet.destroy
    end
    
    private

    def pet_params
      params.permit(:name, :type, :breed, :age)
    end  
    
    end
  end
end   