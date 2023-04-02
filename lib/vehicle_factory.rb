class VehicleFactory
  attr_reader

  def create_wa_vehicle(vehicle)
    vehicle = vehicle.slice(:vin_1_10, :model, :make, :model_year).merge({engine: :ev})
    vehicle[:year] = vehicle.delete(:model_year)
    vehicle[:vin] = vehicle.delete(:vin_1_10)
    Vehicle.new(vehicle)
  end

end