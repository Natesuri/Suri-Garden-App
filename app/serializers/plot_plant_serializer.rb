class PlotPlantSerializer < ActiveModel::Serializer
  attributes :id
  has_one :plot
  has_one :plant
end
