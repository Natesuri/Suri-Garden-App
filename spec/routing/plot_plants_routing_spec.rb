require "rails_helper"

RSpec.describe PlotPlantsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/plot_plants").to route_to("plot_plants#index")
    end


    it "routes to #show" do
      expect(:get => "/plot_plants/1").to route_to("plot_plants#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/plot_plants").to route_to("plot_plants#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/plot_plants/1").to route_to("plot_plants#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/plot_plants/1").to route_to("plot_plants#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/plot_plants/1").to route_to("plot_plants#destroy", :id => "1")
    end

  end
end
