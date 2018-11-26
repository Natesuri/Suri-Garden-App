class PlotsController < OpenReadController
  before_action :set_plot, only: %i[show update destroy]

  # GET /plots
  def index
    @plots = Plot.all

    render json: @plots
  end

  # GET /plots/1
  def show
    render json: @plot
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

  # DELETE /plots/1
  def destroy
    @plot.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_plot
    @plot = Plot.find(params[:id])
    # @plot = current_user.plots.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def plot_params
    params.require(:plot).permit(:name, :size, :brightness, :climate, :notes)
  end
end
