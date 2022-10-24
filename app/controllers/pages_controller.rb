class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @garden = Garden.all
    @current_user = User.new
    if current_user.gardens
      @gardens = Garden.all.where(user_id: current_user)
    else
      redirect_to "/gardens/new"
    end
  end
end
