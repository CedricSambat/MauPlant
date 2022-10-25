class PlantsController < ApplicationController
  before_action :set_categories
  def index
    @fruits = Plant.where(category: "fruit")
    @flowers = Plant.where(category: "flower")
    @vegetables = Plant.where(category: "vegetable")
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def set_categories
    @Categories = Categorie.all
  end
end
