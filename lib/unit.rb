#Converts Units for the system being used
class Unit
  METER = Object.new
  CENTIMETER = Object.new
  MILIMETER = Object.new

  def initialize type
    @type=type
  end

  def to_mm value
    return value*10 if @type == Unit::CENTIMETER
    return value*1000 if @type == Unit::METER
    return value*1 if @type == Unit::MILIMETER
  end

end