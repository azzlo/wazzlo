class Container < ApplicationRecord
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
end
