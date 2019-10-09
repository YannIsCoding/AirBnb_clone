class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_flat, only: [:show, :edit, :update]
  def index
    @flats = Flat.all
  end

  def show
    @reviews = @flat.reviews
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def destroy
    Flat.destroy(params[:id])
    redirect_to root_path
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :address, :price_per_night, :number_of_guests)
  end
end
