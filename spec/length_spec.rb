require 'spec_helper'

describe Length do

  context 'conversion to mm' do
    it 'from centimeter' do
      length =  Length.new(3, 'cm')
      expect(length.to_mm).to eq(30)
    end

    it 'from meter' do
      length =  Length.new(3, 'm')
      expect(length.to_mm).to eq(3000)
    end

    it 'from milimeter' do
      length =  Length.new(3, 'mm')
      expect(length.to_mm).to eq(3)
    end
  end

end