class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:cart]

  def index
    @dishes = Dish.limit(6)
  end

  def about
  end

  def news
  end

  def destinations
    @destinations = Destination.all
  end

  def cart
  end

end