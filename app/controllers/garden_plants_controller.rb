class GardenPlantsController < ApplicationController
  # before_action :set_garden_plants, only: :destroy
  # before_action :set_list, only: [:new, :create]

  def new
    @garden = Garden.find(params[:garden_id])
    @garden_plant = GardenPlant.new
    @plants = Plant.all
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @garden_plant = GardenPlant.new(garden_plant_params)
    @garden_plant.garden = @garden
    if @garden_plant.save!
      redirect_to garden_path(@garden)
    else
      render :new, status: :unprocessable_entity
    end

  end

  # def destroy
  #   @garden_plant.destroy
  #   redirect_to list_path(@garden_plant.list), status: :see_other
  # end

  # private

  def garden_plant_params
    params.require(:garden_plant).permit(:garden_id, :plant_id)
  end

  # def garden_plant_params
  #   @garden_plant = Garden_plant.find(params[:id])
  # end

  # def set_list
  #   @list = List.find(params[:list_id])
  # end
end
