class PlotSerializer < ActiveModel::Serializer
  attributes :id, :name, :size, :brightness, :climate, :notes, :user_id
end
