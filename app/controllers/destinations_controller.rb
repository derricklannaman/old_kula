class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
    @dishes = @destination.dishes
    hero_image_class = "#{@destination.name.downcase}-hero-img"
    render locals: { hero_image_class: hero_image_class }
  end

end
