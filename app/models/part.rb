class Part < ApplicationRecord
    has_many :car_parts
    has_many :cars, through: :car_parts

    validates :part_name, length: { in: 2..20 }
end
