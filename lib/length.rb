#Represents length in magnitude and unit
class Length
    attr_reader :magnitude,:unit
  def initialize magnitude, unit

    @magnitude = magnitude
    @unit = unit
  end

  def to_mm
    return Length.new(10 * @magnitude, Unit::MILIMETER)if @unit == Unit::CENTIMETER
    return Length.new(1000 * @magnitude, Unit::MILIMETER)if @unit == Unit::METER
    return Length.new(1 * @magnitude, Unit::MILIMETER) if @unit == Unit::MILIMETER
  end

  def == length
    return true if self.object_id == length.object_id
    return false if length.nil?
    return false if self.class != length.class
    [@magnitude,@unit]==[length.magnitude,length.unit]
  end


    def hash
      37 * @magnitude.hash + 37 * @unit.hash
    end

    def eql? other
      self == other
    end

end