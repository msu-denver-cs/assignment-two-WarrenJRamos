class CarPart < ApplicationRecord
  belongs_to :car
  belongs_to :model
end
