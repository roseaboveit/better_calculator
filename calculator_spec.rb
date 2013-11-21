# TO Run this:
# $ rspec calculator_spec.rb

require_relative 'calculator'

describe Calculator do
  let(:calculator){ Calculator.new } #kinda like saying def self.calculator 
  # Lets are lazily and memoized. It only gets paid once and only if you actually need it.
  describe "addition" do
    it "puts two and two together" do
#3      actual = calculator.add(2, 2) #3RD iteration of the spec.
#3b      expect( actual ).to eq(4)
#1      #expect(subject.add(2, 2)).to eq(4) #subject uses the "create instance of class" feature on 1st describe
      expect(calculator.add(2, 2)).to eq(4) # This one with the calculator is equivalent to the above line.
    end
  end

  describe "subtraction" do
    it "subtracts 3 from 10 and returns 7" do
      calculator.subtract(10, 3).should eq(7)
    end
  end

  describe "multiplication" do
    it "multiplies 3 and 6 together" do
      expect(calculator.multiply(3, 6)).to eq(18)
    end
  end

  describe "division" do
    it "divides the 6 by 2 and returns 3" do
      expect(calculator.divide(6, 2)).to eq(3)
    end

    it "divides 5 by 2 and returns 2.5" do
      expect(calculator.divide(5, 2)).to eq(2.5)
    end
  end

  describe "square_root" do
    it "finds the square root of 25" do
      expect(calculator.square_root(25)).to eq(5)
    end
  end

  describe "exponify" do
    it "finds the cube of 4" do
      expect(calculator.exponify(4, 3)).to eq(64)
    end
  end

  describe "parse" do
    describe "single-digit operations" do
      it "finds '2+4' to be 6 as an integer" do
        expect(calculator.parse("2+4")).to eq(6)
      end

      it "finds '9-4' to be 5 as an integer" do
        expect(calculator.parse("9-4")).to eq(5)
      end

      it "finds '2*4' to be 8 as an integer" do
        expect(calculator.parse("2*4")).to eq(8)
      end

      it "finds '9/3' to be 3" do
        expect(calculator.parse("9/3")).to eq(3)
      end
    end
    describe "multiple-digit operations" do
      it "finds '23+12' to be 35" do
        expect(calculator.parse('23+12')).to eq(35)
      end
    end
  end
end





