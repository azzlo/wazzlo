class CreateContainerHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :container_histories do |t|
      t.integer :sensor_value
      t.integer :capacity_percentage
      t.references :container, foreign_key: true

      t.timestamps
    end
  end
end
