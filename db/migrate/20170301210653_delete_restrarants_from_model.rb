class DeleteRestrarantsFromModel < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :restrarant
 end
end
