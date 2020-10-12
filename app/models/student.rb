class Student < ApplicationRecord
    has_many :ducks

    validates :name, :mod, presence: true
    validates :mod, numericality: {greater_than: 0, less_than: 6}
end
