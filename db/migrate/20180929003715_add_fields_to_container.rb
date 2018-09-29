class AddFieldsToContainer < ActiveRecord::Migration[5.2]
  def change
    add_column :containers, :contact_sensor_at, :datetime
    add_column :containers, :sensor_token, :string
    add_index :containers, :sensor_token, unique: true
  end
end
