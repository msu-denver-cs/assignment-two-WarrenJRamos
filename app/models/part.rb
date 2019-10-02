class Part < ApplicationRecord
    has_many :car_parts
    has_many :cars, through: :car_parts

    validates :part_name, length: { minimum: 2 }
end
