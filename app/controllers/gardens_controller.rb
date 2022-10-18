class GardensController < ApplicationController

  def index
    @garden = Garden.all
  end

  def show
    @garden = Garden.new
  end

  def edit
  end

  def create
    @user = current_user
    @garden = Garden.new(garden_params)
    if garden.save
      redirect_to garden_path
    else
      @garden = Garden.new
      render :new, status: :unprocessable_entity
    end
  end

  private
  def garden_params
    params.require(:garden).permit(:user, :latidude, :longtude ,:address)
  end
end
