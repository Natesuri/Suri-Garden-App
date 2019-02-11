class PlotsController < ProtectedController
  before_action :set_plot, only: %i[show update destroy add_plant]

  # GET /plots
  def index
    @plots = current_user.plots.all
    @plot_plants = @plots.map do |plot|
      { plot: plot, plants: plot.plants }
    end

    render json: @plot_plants
  end

  # GET /plots/1
  def show
    @plot_plant = { plot: @plot, plants: @plot.plants }

    render json: @plot_plant
  end

  # POST /plots
  def create
    # @plot = Plot.new(plot_params)
    @plot = current_user.plots.build(plot_params)

    if @plot.save
      render json: @plot, status: :created, location: @plot
    else
      render json: @plot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plots/1
  def update
    if @plot.update(plot_params)
      render json: @plot
    else
      render json: @plot.errors, status: :unprocessable_entity
    end
  end

  def add_plant
    @plot.plants << Plant.find(plant_params['plantId'])
    @plot_plant = { plot: @plot, plants: @plot.plants }

    render json: @plot_plant
  end

  # DELETE /plots/1
  def destroy
    @plot.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_plot
    @plot = current_user.plots.find(params[:id])
    # @plot = current_user.plots.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def plot_params
    params.require(:plot).permit(:name, :size, :brightness, :climate, :notes)
  end

  def plant_params
    params.require(:plant).permit(:plantId)
  end
end
