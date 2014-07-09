require 'spec_helper'

describe Rectangle do

  context 'perimeter' do
    it 'should be 30 mm for rectangle with sides 5 mm and 10 mm ' do

      rectangle = Rectangle.new(
          Length.new(5,Unit::MILIMETER) ,
          Length.new(10, Unit::MILIMETER)
      )
      expect(rectangle.perimeter).to eq(Length.new(30,Unit::MILIMETER))

    end
    it 'should be 6000 mm for rectangle with sides 2 m and 100 cm ' do

      rectangle = Rectangle.new(
          Length.new(2,Unit::METER),
          Length.new(100, Unit::CENTIMETER)
      )
      expect(rectangle.perimeter).to eq(Length.new(6000,Unit::MILIMETER))

    end


    context "Equality checks" do
      let(:rectangle1) {Rectangle.new(Length.new(2,Unit::MILIMETER),Length.new(3,Unit::MILIMETER)) }
      let(:rectangle2) {Rectangle.new(Length.new(3,Unit::MILIMETER),Length.new(2,Unit::MILIMETER)) }
      it "should be equal for same object id" do
        expect(rectangle1).to eq(rectangle2)
      end

      it "should not be null" do
        expect(rectangle1).to_not eq(nil)
      end

      it "should not be equal for different type" do
        object = Object.new
        expect(rectangle1).to_not eq(object)
      end

      it "should have same hash code" do
        expect(rectangle1.hash).to eq(rectangle2.hash)
      end

      it "symmetric property" do
        expect(rectangle1).to eq(rectangle2) and expect(rectangle2).to eq(rectangle1)
      end

      it "transitive property" do
        rectangle3 = Rectangle.new(Length.new(3,Unit::MILIMETER),Length.new(2,Unit::MILIMETER))
        expect(rectangle1).to eq(rectangle2) and expect(rectangle2).to eq(rectangle3) and expect(rectangle3).to eq(rectangle1)
      end
    end

  end

end