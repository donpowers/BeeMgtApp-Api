class HivesController < ProtectedController
  def index
    @hives = Hive.all

    render json: @hives
  end

  def show
    render json: current_user.hives
  end

  def my_hives
    render json: current_user.hives
  end

  def my_hive
    render json: current_user.hives
  end

  def update
    # @hive = Hive.find(params[:id])
    @hive = current_user.hives.find(params[:id])
    if @hive.update(hive_params)
      head :no_content
    else
      render json: @hive.errors, status: :unprocessable_entity
    end
  end

  def create
    # will need to update this to support current_user model
    @hive = current_user.hives.build(hive_params)
    puts "Insde create is hive: #{@hive}"
    if @hive.save
      render json: @hive, status: :created
    else
      render json: @hive.errors, status: :unprocessable_entity
    end
  end

  def destroy
    # @hive = Hive.find(params[:id])
    @hive = current_user.hives.find(params[:id])
    @hive.destroy

    head :no_content
  end

  def set_hive
    @hive = current_user.hives.find(params[:id])
  end

  def hive_params
    params.require(:hive).permit(:hive_name, :queen_type, :brood_supers,
                                 :honey_supers, :hive_location)
  end
  private :hive_params
end
