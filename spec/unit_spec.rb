require 'spec_helper'

describe Unit do

  context 'convert to mm' do
    it 'should convert 2 m into 20000 mm' do
      unit = Unit.new Unit::METER
      expect(unit.to_mm(2)).to eq(2000)
    end
    it 'should convert 2 cm into 20 mm' do
      unit = Unit.new Unit::CENTIMETER
      expect(unit.to_mm(2)).to eq(20)
    end
    it 'should convert 2 mm into 2 mm' do
      unit = Unit.new Unit::MILIMETER
      expect(unit.to_mm(2)).to eq(2)
    end
  end
end