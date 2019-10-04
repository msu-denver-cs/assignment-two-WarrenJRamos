class Car < ApplicationRecord
  belongs_to :make
  has_many :car_parts
  has_many :parts, through: :car_parts

  validates :make, presence: true
  validates_associated :parts
  validates :vin_number, presence: true, uniqueness: true, 
    format: { with: /[0-9]/}, length: { is: 4 }, numericality: { only_integer: true }
  validates :model_title, presence: true, length: { in: 2..20 }
end
