class GardensController < ApplicationController
  def index
    @gardens = Garden.all

    if current_user.gardens
      @gardens = Garden.all.where(user_id: current_user)
    else
      redirect_to "/gardens/new"
    end
  end

  def show
    @garden = Garden.find(params[:id])
    # @garden_plants = GardenPlant.where(garden_id:params:id)
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
      redirect_to garden_path(@garden)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    redirect_to garden_path(@garden), status: :see_other
  end

  private

  def garden_params
    params.require(:garden).permit(:user, :latitude, :longtude, :address, :name)
  end

  def set_list
    @garden = Garden.find(params[:id])
  end
end
