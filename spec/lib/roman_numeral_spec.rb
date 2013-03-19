require 'rspec-given'

require 'roman_numeral'

describe RomanNumeral do

  describe "#to_i" do
    Given(:converter) { RomanNumeral.new }

    Then { converter.to_i('I').should eq 1 }
    Then { converter.to_i('II').should eq 2 }

    Then { converter.to_i('IV').should eq 4 }
    Then { converter.to_i('IX').should eq 9 }

    Then { converter.to_i('V').should eq 5 }
    Then { converter.to_i('VI').should eq 6 }
    Then { converter.to_i('X').should eq 10 }
  end
end