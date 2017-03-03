class Eatery < ApplicationRecord
validates :name, :address_street, :description, :address_state, :address_zip, :address_city, presence: {:message => "cannot be Blank"}
#validates :phone, length: { minimum: 10, maximum: 12}, numerically: true
validates :name, uniqueness: {case_sensitive: false}
validates :description, length: {maximum: 300}
validates :address_state, length:{maximum: 2}
  #has_many :reservations, dependent:, destroy:
  belongs_to :user
end
