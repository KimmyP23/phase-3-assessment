class ToysController < ApplicationController
  before_action :find_pet
  before_action :find_toy, except: [:index, :new, :create]

  def index 
    @toys = @pet.toys
  end

  def show
  end

  


  private
  def find_pet
    @pet = Pet.find(params[:pet_id])
  end

  def find_toy
    @toy = Toy.find(params[:id])
  end

  def toy_params
    params.require(:toy).permit(:description)
  end
end
