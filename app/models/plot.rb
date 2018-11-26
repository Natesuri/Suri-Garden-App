class Plot < ApplicationRecord
  belongs_to :user
  has_many :plot_plants, dependent: :destroy
  has_many :plants, through: :plot_plants
end
