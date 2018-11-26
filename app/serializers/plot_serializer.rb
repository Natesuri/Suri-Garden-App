class PlotSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :brightness, :climate, :notes
  has_one :user
end
