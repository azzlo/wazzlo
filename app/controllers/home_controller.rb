class HomeController < ApplicationController
  def index
    @devices = WaterDevise.all
  end
end
