#Calculates the perimeter of the modelled rectangle
class Rectangle
  def initialize length, length_unit, breadth, breadth_unit

    @length = convert_to_units(length, length_unit)
    @breadth = convert_to_units(breadth, breadth_unit)
  end



  def perimeter
    "#{2*(@length + @breadth)} mm"
  end
end