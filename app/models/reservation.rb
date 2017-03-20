class Reservation < ApplicationRecord
#validates :party_size, :date, :time, :presence {:message => "cannot be Blank"}

belongs_to :eatery
belongs_to :user
  end
