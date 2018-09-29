class ContainerHistoriesController < ApplicationController
  before_action :set_container_with_history, only: [:index]

  def index
    @container_histories = @container.container_histories
  end

  private

  def set_container_with_history
    @container = Container.find(params[:container_id])
  end
end