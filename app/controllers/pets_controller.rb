class PetsController < ApplicationController
  def index
    if params[:species]
      @pets = Pet.where(species: params[:species].capitalize.singularize)
    else
      @pets = Pet.all
    end
  end

  def show
    set_pet
  end
  
  private

  def set_pet
    @pet = Pet.find_by_id(params[:id])
  end
end
