class Artist < ApplicationRecord
    has_many :artisties
    has_many :instruments, through: :artisties

    validates :title, uniqueness: true


    # def instruments
    #     Instrument.all do |ins|
    #         ins.name 
    #     end 
    # end 
end
