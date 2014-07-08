#Represents length in magnitude and unit
class Length
  def initialize magnitude, unit

    @magnitude = magnitude
    @unit = unit
  end

  def to_mm

    return 1 * @magnitude if @unit == 'mm'
    return 10 * @magnitude if @unit == 'cm'
    return 1000 * @magnitude if @unit == 'm'

  end
end