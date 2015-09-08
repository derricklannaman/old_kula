class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:cart]

  def index
    @dishes = Dish.all.sample(6)
  end

  def about
  end

  def news
  end

  def cart
  end

end