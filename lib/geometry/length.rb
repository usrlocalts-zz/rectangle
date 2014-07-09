#Represents length in magnitude and unit
class Length
    attr_reader :magnitude,:unit
  def initialize magnitude, unit

    @magnitude = unit.to_mm magnitude
  end

  def == length
    return true if self.object_id == length.object_id
    return false if length.nil?
    return false if self.class != length.class
    magnitude==length.magnitude
  end


    def hash
      37 * @magnitude.hash
    end

    def eql? other
      self == other
    end

end