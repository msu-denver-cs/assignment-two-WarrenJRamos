class Make < ApplicationRecord
    has_many :cars

    validates :name, length: { minimum: 2 }
    validates :country, length: { minimum: 2 }
end
