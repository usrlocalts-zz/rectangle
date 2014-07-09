#Converts Units for the system being used
class Unit


  def initialize conversion_factor_to_mm
    @conversion_factor_to_mm = conversion_factor_to_mm
  end

  def to_mm value
    return value * @conversion_factor_to_mm
  end
end

Unit::METER = Unit.new(1000)
Unit::CENTIMETER = Unit.new(10)
Unit::MILIMETER = Unit.new(1)