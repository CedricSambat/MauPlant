class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home

    # @gardens = current_user.gardens

    # @current_user = User.find(garden_params([:id])
    #  @gardens = current_user.garden_plants
    @gardens = Garden.all.where(user_id: current_user)
    # if current_user.gardens
    #   @gardens = Garden.all.where(user_id: current_user)
    # else
    #   redirect_to "/gardens/new"
    # end
  end
end
