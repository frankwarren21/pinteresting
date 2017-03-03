class DeleteUsersFromEatery < ActiveRecord::Migration[5.0]
  def change
    remove_column :eateries, :users_id
  end
end
