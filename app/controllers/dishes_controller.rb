class DishesController < ApplicationController

  respond_to :html, :json

  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
    respond_with(@dish)
  end

end