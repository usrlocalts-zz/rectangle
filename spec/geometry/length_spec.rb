require 'spec_helper'

describe Length do

  context 'conversion to mm' do
    it 'from centimeter' do
      length =  Length.new(3, Unit::CENTIMETER)
      expect(length).to eq(Length.new(30,Unit::MILIMETER))
    end

    it 'from meter' do
      length =  Length.new(3, Unit::METER)
      expect(length).to eq(Length.new(3000,Unit::MILIMETER))
    end

    it 'from milimeter' do
      length =  Length.new(3, Unit::MILIMETER)
      expect(length).to eq(Length.new(3,Unit::MILIMETER))
    end
  end


  context "Equality checks" do
    let(:length1) {Length.new(3,Unit::MILIMETER) }
    let(:length2) {Length.new(3, Unit::MILIMETER) }
    it "should be equal for same object id" do
      expect(length1).to eq(length2)
    end

    it "should not be null" do
      expect(length1).to_not eq(nil)
    end

    it "should not be equal for different type" do
      object = Object.new
      expect(length1).to_not eq(object)
    end

    it "should have same hash code" do
      expect(length1.hash).to eq(length2.hash)
    end

    it "symmetric property" do
      expect(length1).to eq(length2) and expect(length2).to eq(length1)
    end

    it "transitive property" do
      length2 = Length.new(3,Unit::MILIMETER)
      expect(length1).to eq(length2) and expect(length2).to eq(length2) and expect(length2).to eq(length1)
    end
  end
end