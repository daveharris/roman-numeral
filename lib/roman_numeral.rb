class RomanNumeral

  attr_accessor :numeral

  def to_i
    value = 0
    numeral.chars do |char|
      # puts "Starting looking at char [#{char}], current value is #{value}"
      case char
      when 'I'
        value += 1
      when 'V'
        value += 5
      when 'X'
        value += 10
      end
      # puts "Ending looking at char [#{char}], current value is #{value}"
    end
    value
  end
end