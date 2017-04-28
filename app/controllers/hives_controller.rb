class HivesController < ApplicationController
  def index
    @hives = Hive.all

    render json: @hives
  end

  def show
    render json: Hive.find(params[:id])
  end

  def update
    @hive = Hive.find(params[:id])
    if @hive.update(hive_params)
      head :no_content
    else
      render json: @hive.errors, status: :unprocessable_entity
    end
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

  def destroy
    @hive = Hive.find(params[:id])
    @hive.destroy

    head :no_content
  end

  def hive_params
    params.require(:hive).permit(:hive_name, :queen_type, :brood_supers,
                                 :honey_supers, :hive_location, :user_id)
  end
  private :hive_params
end
