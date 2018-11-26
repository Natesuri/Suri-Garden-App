class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :size, :care_instructions, :ideal_climate, :ideal_brightness # , :water_frequency, :harvest_frequency, :impossible_climate, :impossible_brightness
end
