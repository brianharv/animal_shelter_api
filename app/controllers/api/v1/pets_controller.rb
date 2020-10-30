module Api
  module V1
    class PetsController < ApplicationController 


    def index # GET http://localhost:3000/api/v1/pets
      if name = params[:name]
        @pets = Pet.search_by_name(name)
      else    
      @pets = Pet.all
      end
      json_response(@pets)
    end

    def show
      @pet = Pet.find(params[:id])
      json_response(@pet)
    end
    
    def create
      @pet = Pet.create!(pet_params)
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

    def get_random_pet
      @pet_first = Pet.all.first
      @pet_last = Pet.all.last
      random_pet = rand(@pet_first..@pet_last)
    end  
    
    private

    def pet_params
      params.permit(:name, :species, :breed, :age, :bio)
    end  
    
    end
  end
end   