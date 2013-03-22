class RomanNumeral

  TO_R_CONVERSIONS = {
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }

  TO_I_CONVERSIONS = { 
    I:  1,
    V:  5,
    X:  10
  }

  # Stolen from https://github.com/jamesshipton/roman-numeral
  def to_i(numeral)
    @roman_numeral = numeral
    
    numerals.inject(0) do |total, numeral|
      @current_numeral = numeral

      if subtract_numeral_from_total?
        total - numeral_to_integer
      else
        total + numeral_to_integer
      end
    end
  end

  def numerals
    @numerals ||= @roman_numeral.split('')
  end

  def subtract_numeral_from_total?
    has_next_numeral? &&
    next_numeral_is_greater?
  end

  def has_next_numeral?
    !@current_numeral.equal?(numerals.last)
  end

  def next_numeral_is_greater?
    numeral_to_integer < numeral_to_integer(next_numeral)
  end

  def next_numeral
    numerals[(numerals.index { |n| n.equal? @current_numeral } + 1)]
  end

  def numeral_to_integer(numeral = @current_numeral)
    TO_I_CONVERSIONS[numeral.to_sym]
  end

  # Stolen from http://youtu.be/983zk0eqYLY
  def to_r(int)
    result = ""
    
    TO_R_CONVERSIONS.each do |limit, glyph|
      while int >= limit
        result << glyph
        int -= limit
      end
    end

    result
  end
end