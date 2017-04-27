class HivesController < ApplicationController
  def index
  @hives = Hive.all

  render json: @hives
  end
end
