class Car < ApplicationRecord
  belongs_to :make
  has_many :car_parts
  has_many :parts, through: :car_parts

  validates_associated :parts

  validates :vin_number, uniqueness: true
  validates :vin_number, format: { with: /[0-9]/}
  validates :vin_number, length: { in: 0..4 }
  validates :vin_number, numericality: { only_integer: true }
end
