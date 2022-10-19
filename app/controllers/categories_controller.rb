class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    # search bar
    if params[:query].present?
      @plants = Plants.where("name ILIKE ?", "%#{params[:query]}%")

     # Preventing SQL Injection and Database error for
     # unknown characters
     # else
      @plants = Plants.where(categories: @categories)
    end

<<<<<<< HEAD
    # @categories = Categories.all
  end

  def show
    @CategoriesController = Categories.find(params[:id])
=======
    # @Categories = Categories.all
  end

  def show
    @categories = Categories.find(params[:id])
>>>>>>> master
    if params[:query].present?
    @plants = Plants.where(categories: @categories).where("name ILIKE ?", "%#{params[:query]}%")
    # Preventing SQL Injection and Database error for
    # unknown characters

    else
      @plants = Plants.where(categories: @categories)
    end
  end
end
