class GardensController < ApplicationController
  def index
    if params[:query].present?
      @gardens = Garden.where("name ILIKE ?", "%#{params[:query]}%")
    elsif current_user.gardens
      @gardens = Garden.all.where(user_id: current_user)
    else
      redirect_to "/gardens/new"
    end
  end

  def show
    @garden = Garden.find(params[:id])
    @myplants = @garden.garden_plants
    # Plant.all.each do |plant|
    #   GardenPlant.all.where(garden_id:params[:id]).each do |gplant|
    #     if plant.id == gplant.plant_id
    #       @plants << plant
    #     end
    #   end
    # end
    # @garden_plants = GardenPlant.all.where(garden_id:params[:id])
    # same as
    # view garden show/@gardenplant .each
    # add a new plant is a new garden plant in gatrden plants controller
  end

  def update
    @garden = Garden.find(params[:id])
    @garden.update(garden_params)
  end

  def edit
    @garden = Garden.find(params[:id])
  end

  def new
    @garden = Garden.new
  end

  def create
    @user = current_user
    @garden = Garden.new(garden_params)
    @garden.user = @user
    if @garden.save
      redirect_to gardens_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    redirect_to gardens_path, status: :see_other
  end

  private

  def garden_params
    params.require(:garden).permit(:reminder, :user, :latitude, :longtude, :address, :name, :photo)
  end

  def set_list
    @garden = Garden.find(params[:id])
  end
end
