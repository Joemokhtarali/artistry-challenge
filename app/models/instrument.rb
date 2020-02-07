class Instrument < ApplicationRecord
    has_many :artisties
    has_many :artists, through: :artisties
end
