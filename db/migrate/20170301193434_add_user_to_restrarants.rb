class AddUserToRestrarants < ActiveRecord::Migration[5.0]
  def change
    add_reference :eateries, :user, foreign_key: true
  end
end
