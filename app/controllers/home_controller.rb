class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:cart]

  def index
    @featured_items = Dish.all
  end

  def about
  end

end