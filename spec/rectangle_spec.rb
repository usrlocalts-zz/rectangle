require 'spec_helper'

describe Rectangle do

  context 'perimeter' do
    it 'should be 30 mm for rectangle with sides 5 mm and 10 mm ' do

      rectangle = Rectangle.new(5,'mm', 10, 'mm')
      expect(rectangle.perimeter).to eq('30 mm')

    end
    it 'should be 6000 mm for rectangle with sides 2 m and 100 cm ' do

      rectangle = Rectangle.new(2,'m', 100, 'cm')
      expect(rectangle.perimeter).to eq('6000 mm')

    end
  end

end