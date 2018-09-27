class CreateWaterDevises < ActiveRecord::Migration[5.2]
  def change
    create_table :water_devises do |t|
      t.string :name, null: false
      t.string :address
      t.string :location
      t.string :state
      t.decimal :lat, precision: 10, scale: 8
      t.decimal :long, precision: 11, scale: 9
      t.float :current_value

      t.timestamps
    end
  end
end
