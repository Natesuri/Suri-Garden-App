class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :plant_type, :care_instructions, :ideal_brightness
end
