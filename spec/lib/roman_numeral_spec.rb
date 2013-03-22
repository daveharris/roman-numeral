require 'rspec-given'

require 'roman_numeral'

describe RomanNumeral do

  Given(:converter) { RomanNumeral.new }

  describe "#to_i" do
    Then { converter.to_i('I').should eq 1 }
    Then { converter.to_i('II').should eq 2 }

    Then { converter.to_i('IV').should eq 4 }
    Then { converter.to_i('IX').should eq 9 }

    Then { converter.to_i('V').should eq 5 }
    Then { converter.to_i('VI').should eq 6 }
    Then { converter.to_i('X').should eq 10 }
  end

  describe "#to_r" do
    Then { converter.to_r(1).should eq 'I' }
    Then { converter.to_r(2).should eq 'II' }

    Then { converter.to_r(4).should eq 'IV' }
    Then { converter.to_r(9).should eq 'IX' }

    Then { converter.to_r(5).should eq 'V' }
    Then { converter.to_r(6).should eq 'VI' }
    Then { converter.to_r(10).should eq 'X' }
    Then { converter.to_r(20).should eq 'XX' }
  end
end