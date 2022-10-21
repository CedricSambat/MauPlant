class GardenPlantsController < ApplicationController
  before_action :set_garden_plant, only: :destroy
  # baefore_action :set_list, only: [:new, :crete]

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

  def destroy
    # break
    # @garden = @garden_plant.garden
    @garden_plant.destroy
    @garden = @garden_plant.garden
    redirect_to garden_path(@garden)

    # redirect_to list_path(@garden_plant.list), status: :see_other
  end

  # private

  def garden_plant_params
    params.require(:garden_plant).permit(:garden_id, :plant_id)
  end

  def set_garden_plant
    @garden_plant = GardenPlant.find(params[:id])
  end

  # def set_list
  #   @list = List.find(params[:list_id])
  # end
end
