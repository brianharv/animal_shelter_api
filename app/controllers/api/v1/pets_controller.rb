module Api
  module V1
    class PetsController < ApplicationController 


     def index
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
  end  
end   