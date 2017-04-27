class HivesController < ApplicationController
  def index
  @hives = Hive.all

  render json: @hives
  end

  def show
    render json: Hive.find(params[:id])
  end
end
