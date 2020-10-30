module Api
  module V1
    class PetsController < ApplicationController 
      

    def index # GET http://localhost:3000/api/v1/pets
      @pets = Pet.all
      json_response(@pets)
    end

    def show
      @pet = Pet.find(params[:id])
      json_response(@pet)
    end
    
    def create
      @pet = Pet.create(pet_params)
      json_response(@pet, :created)
    end
    
    def update
      @pet = Pet.find(params[:id])
      if @pet.update!(pet_params)
        render status: 200, json: {
          message: "Pet has been updated successfully"
        }
      end 
    end  

    def destroy
      @pet = Pet.find(params[:id])
      @pet.destroy
    end
    
    private

    def pet_params
      params.permit(:name, :species, :breed, :age, :bio)
    end  
    
    end
  end
end   