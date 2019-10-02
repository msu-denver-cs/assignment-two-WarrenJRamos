class Car < ApplicationRecord
  belongs_to :make
  has_many :car_parts
  has_many :parts, through: :car_parts

  validates_associated :parts
  validates :vin_number, uniqueness: true
  validates :vin_number, format: { with: /[0-9]/}
end
