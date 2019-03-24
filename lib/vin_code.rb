module VinCode
  class << self
    RESULT = {
      country: nil, manufacturer: nil, type_body: nil, engine: nil,
      security_system: nil, vehicle_class: nil, year_model: nil, plant_code: nil
    }

    def set_vin(vin = nil)
      self.decode(vin) if !vin.nil? && vin.length == 17
    end

    private
    def decode
      #pos 1 continent
      #pos 2 country
      #pos 3 manufacturer
      #pos 4 type body
      #pos 5 engine
      #pos 6 security system
      #pos 7-8 vehicle class
      #pos 9 DV
      #pos 10 year-model
      #pos 11 manufacturing plant code
      #pos 12-17 sequential number
    end
  end
end
