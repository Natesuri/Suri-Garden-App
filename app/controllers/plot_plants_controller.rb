# frozen_string_literal: true

class PlotPlantsController < ApplicationController
  before_action :set_plot_plant, only: %i[show update destroy]

  # GET /plot_plants
  def index
    @plot_plants = PlotPlant.all

    render json: @plot_plants
  end

  # GET /plot_plants/1
  def show
    render json: @plot_plant
  end

  # POST /plot_plants
  def create
    @plot_plant = PlotPlant.new(plot_plant_params)

    if @plot_plant.save
      render json: @plot_plant, status: :created, location: @plot_plant
    else
      render json: @plot_plant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plot_plants/1
  def update
    if @plot_plant.update(plot_plant_params)
      render json: @plot_plant
    else
      render json: @plot_plant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plot_plants/1
  def destroy
    @plot_plant.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_plot_plant
    @plot_plant = PlotPlant.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def plot_plant_params
    params.require(:plot_plant).permit(:plot_id, :plant_id)
  end
end
