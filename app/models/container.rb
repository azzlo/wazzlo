class Container < ApplicationRecord
  HISTORY_INTERVAL_TIME = 5.minutes

  has_many :container_histories

  has_secure_token :sensor_token
  
  validates :name, presence: true

  # En base al porcentaje actual obtenemos los litros actuales
  def current_capacity_liters
    if self.high_capacity && self.current_capacity_percentage
      liters = self.current_capacity_percentage.to_f / 100 * self.high_capacity
      return liters.to_i
    end

    return nil
  end

  # Obtenemos el porcentaje de liquido actual
  def current_capacity_percentage
    if self.low_sensor and self.high_sensor and self.last_sensor
      range = self.low_sensor - self.high_sensor
      percentage = (self.low_sensor - self.last_sensor) / range.to_f * 100
      return percentage.to_i
    end

    return nil
  end

  # Crea un registro para el historial solo si el valor actual exede 5 minutos de la ultima historia
  def save_history
    if (self.contact_sensor_at - self.container_histories.last.created_at) > HISTORY_INTERVAL_TIME
      self.container_histories.create(sensor_value: self.last_sensor, capacity_percentage: self.current_capacity_percentage)
    # Creación de la primera historia, asi el IF funciona
    elsif(self.container_histories.count == 0)
      self.container_histories.create(sensor_value: self.last_sensor, capacity_percentage: self.current_capacity_percentage)
    end
  end

end
