class GardenPlantsController < ApplicationController
  before_action :set_garden_plants, only: :destroy
  before_action :set_list, only: [:new, :create]

  def new
    @garden_plant = garden_plant.new
  end

  def create
    @garden_plant = garden_plant.new(garden_plant_params)
    @garden_plant.list = @list
    if @garden_plant.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @garden_plant.destroy
    redirect_to list_path(@garden_plant.list), status: :see_other
  end

  private

  def garden_plant_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  def set_garden_plant
    @garden_plant = garden_plant.find(params[:id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end
end
