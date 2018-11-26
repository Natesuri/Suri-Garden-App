require 'rails_helper'

RSpec.describe "PlotPlants", type: :request do
  describe "GET /plot_plants" do
    it "works! (now write some real specs)" do
      get plot_plants_path
      expect(response).to have_http_status(200)
    end
  end
end
