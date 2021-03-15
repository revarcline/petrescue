class PetsController < ApplicationController
  before_action :admin_only
  skip_before_action :admin_only, only: %i[index show oldest]
  def index
    @pets = if params[:species]
              Pet.where(species: params[:species].capitalize.singularize)
            else
              Pet.all
            end
  end

  def show
    set_pet
  end

  def oldest
    @pet = Pet.oldest
    render :show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.valid?
      @pet.save
      params[:notice] = 'Pet created successfully'
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def edit
    set_pet
  end

  def update
    set_pet
    if @pet.update(pet_params)
      params[:notice] = 'Pet updated successfully'
      redirect_to pet_path(@pet)
    else
      render :edit
    end
  end

  def destroy
    Pet.destroy(params[:id])
    params[:notice] = 'Pet deleted successfully'
    redirect_to pets_path
  end

  private

  def set_pet
    @pet = Pet.find_by_id(params[:id])
  end

  def pet_params
    params.require(:pet).permit(
      :name,
      :species,
      :birthdate,
      :breed,
      :color,
      :sex,
      :weight,
      :kid_friendly,
      :solo_pet,
      :photo,
      :description
    )
  end
end
