class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    # search bar
    if params[:query].present?
      @plants = Plants.where("name ILIKE ?", "%#{params[:query]}%")

    # Preventing SQL Injection and Database error for
    # unknown characters
    # else
    #   @plants = Plants.where(category: @category)
    end

    @Categories = Categorie.all
  end

  def show
    @category = Category.find(params[:id])
    if params[:query].present?
    @plants = Plants.where(category: @category).where("name ILIKE ?", "%#{params[:query]}%")
    # Preventing SQL Injection and Database error for
    # unknown characters

    else
      @plants = Plants.where(category: @category)
    end
  end
end
