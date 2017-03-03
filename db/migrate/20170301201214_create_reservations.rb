class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :email
      t.date :date
      t.string :time
      t.integer :party_size
      t.string :comments
      t.string :phone
      t.string :email

      t.belongs_to :restrarant
      t.belongs_to :user
      t.timestamps
    end
  end
end
