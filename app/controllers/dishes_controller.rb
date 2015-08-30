class DishesController < ApplicationController

  respond_to :html, :json
  def index
    @dishes = Dish.all
  end

  def show
    # binding.pry
    @dish = Dish.find(params[:id])
    respond_with(@susu)
  end

end