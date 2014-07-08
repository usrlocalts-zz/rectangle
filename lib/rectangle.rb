#Calculates the perimeter of the modelled rectangle
class Rectangle
  attr_reader :length, :breadth
  def initialize length, breadth

    @length = length
    @breadth = breadth
  end

  def perimeter
    Length.new(2*(@length.to_mm.magnitude + @breadth.to_mm.magnitude), Unit::MILIMETER)
  end

  def == rectangle
    return true if self.object_id == rectangle.object_id
    return false if rectangle.nil?
    return false if self.class != rectangle.class
    [@length,@breadth]==[rectangle.length,rectangle.breadth] || [@breadth, @length]==[rectangle.length,rectangle.breadth]
  end


  def hash
    37 * @length.hash + 37 * @breadth.hash
  end

  def eql? other
    self == other
  end
end