#Calculates the perimeter of the modelled rectangle
class Rectangle
  def initialize length, length_unit, breadth, breadth_unit

    @length = convert_to_units(length, length_unit)
    @breadth = convert_to_units(breadth, breadth_unit)
  end

  private def convert_to_units inner_length, inner_length_unit

            return 1 * inner_length if inner_length_unit == 'mm'
            return 10 * inner_length if inner_length_unit == 'cm'
            return 1000 * inner_length if inner_length_unit == 'm'

          end

  def perimeter
    "#{2*(@length + @breadth)} mm"
  end
end