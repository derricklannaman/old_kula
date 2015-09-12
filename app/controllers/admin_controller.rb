class AdminController < ApplicationController

  def dashboard
    @dish = Dish.new
    destination_loader
  end

  private

  def destination_loader
    @destinations = Destination.order(name: :ASC)
  end


end