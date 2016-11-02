class ToysController < ApplicationController
  before_action :find_pet
  before_action :find_toy, except: [:index, :new, :create]

  def index 
    @toys = @pet.toys
  end

  def show
  end

   def new
    @toy = Toy.new
    if request.xhr?
      render partial: 'form'
    end
  end

  def create
    @toy = @pet.toys.new(toy_params)

    if @toy.save
      if request.xhr?
        render json: @toy
      else
        redirect_to pet_toy_path(@pet, @toy)
      end
    else
      @errors = @toy.errors.full_messages
      render 'new'
    end
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
