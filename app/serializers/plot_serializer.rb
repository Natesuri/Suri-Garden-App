class PlotSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :brightness, :climate, :notes
end
