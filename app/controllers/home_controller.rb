class HomeController < ApplicationController
  def index
    @containers = Container.all
  end
end
