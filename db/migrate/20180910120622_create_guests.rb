class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :category

      t.timestamps
    end
  end
end
