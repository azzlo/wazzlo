json.extract! container, :id, :name, :address, :location, :state, :lat, :long, :last_sensor, :high_sensor, :low_sensor, :high_capacity, :low_capacity, :created_at, :updated_at
json.url container_url(container, format: :json)
