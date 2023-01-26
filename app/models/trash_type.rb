class TrashType < ApplicationRecord
    has_many :trashexplains
    has_many :wardplaces, through: :trashexplains
end
