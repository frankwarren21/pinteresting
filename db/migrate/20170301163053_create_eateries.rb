class CreateEateries < ActiveRecord::Migration[5.0]
  def change
    create_table :eateries do |t|
      t.string :name
      t.string :description
      t.string :phone
      t.string :address_street
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.string :website
      t.string :image_url
      t.belongs_to :users

      t.timestamps
    end
  end
end
