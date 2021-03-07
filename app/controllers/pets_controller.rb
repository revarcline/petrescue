class PetsController < ApplicationController
  def index
    if params[:type]
      @pets = Pet.where(type: params[:type])
    else
      @pets = Pet.all
    end
  end
end
