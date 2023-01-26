class Wardplace < ApplicationRecord
    belongs_to :ward
    has_many :trashexplains
    has_many :trash_types, through: :trashexplains
end
