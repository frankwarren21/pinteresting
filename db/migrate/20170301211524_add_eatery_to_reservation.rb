class AddEateryToReservation < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :eatery, :reservation
  end
end
