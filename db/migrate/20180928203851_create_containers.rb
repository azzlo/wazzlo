class CreateContainers < ActiveRecord::Migration[5.2]
  def change
    create_table :containers do |t|
      t.string :name, null: false
      t.string :address
      t.string :location
      t.string :state
      t.decimal :lat, precision: 10, scale: 8
      t.decimal :long, precision: 11, scale: 9
      t.integer :last_sensor
      t.integer :high_sensor
      t.integer :low_sensor
      t.integer :high_capacity
      t.integer :low_capacity

      t.timestamps
    end
  end
end
