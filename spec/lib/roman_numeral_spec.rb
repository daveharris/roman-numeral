require_relative '../../lib/roman_numeral.rb'

describe RomanNumeral do

  describe "#to_i" do
    let(:roman_numeral) { RomanNumeral.new }
    
    it "returns 1 for I" do
      roman_numeral.numeral = 'I'
      roman_numeral.to_i.should eq 1
    end

    it "returns 2 for II" do
      roman_numeral.numeral = 'II'
      roman_numeral.to_i.should eq 2
    end

    it "returns 4 for IV" do
      roman_numeral.numeral = 'IV'
      roman_numeral.to_i.should eq 4
    end

    it "returns 5 for V" do
      roman_numeral.numeral = 'V'
      roman_numeral.to_i.should eq 5
    end

    it "returns 6 for VI" do
      roman_numeral.numeral = 'VI'
      roman_numeral.to_i.should eq 6
    end

    it "returns 10 for X" do
      roman_numeral.numeral = 'X'
      roman_numeral.to_i.should eq 10
    end


  end
end