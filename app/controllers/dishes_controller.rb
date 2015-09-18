class DishesController < ApplicationController

  respond_to :html, :json

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to admin_dashboard_path
    else
      render 'new'
    end
  end

  def show
    @dish = Dish.find(params[:id])
    respond_with(@dish)
  end


  private

    def dish_params
      params.require(:dish)
                    .permit(:name, :description, :destination_id, :image, :price)
    end


end