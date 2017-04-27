class HivesController < ApplicationController
  def index
    @hives = Hive.all

    render json: @hives
  end

  def show
    render json: Hive.find(params[:id])
  end

  def create
    # will need to update this to support current_user model
    @hive = Hive.new(hive_params)
    if @hive.save
      render json: @hive, status: :created
    else
      render json: @hive.errors, status: :unprocessable_entity
    end
  end

  def hive_params
    params.require(:hive).permit(:hive_name, :queen_type, :brood_supers,
                                 :honey_supers, :hive_location)
  end
  private :hive_params
end
