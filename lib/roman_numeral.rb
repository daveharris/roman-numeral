class RomanNumeral

  DIGITS = { 'I' => 1, 'V' => 5, 'X' => 10 }

  def to_i(numeral)
    value = 0
    chars = numeral.split('')
    chars.each_with_index do |char, index|
      next_char = chars[index+1]
      # puts "Starting looking at char [#{char}], current value is #{value}, next item is #{next_char}"
      
      case char
      when 'I'
        if next_char == 'V'
          value = value + DIGITS['V']
          value = value - DIGITS['I']
          break
        elsif next_char == 'X'
          value = value + DIGITS['X']
          value = value - DIGITS['I']
          break
        end
        value += DIGITS['I']
      when 'V'
        value += DIGITS['V']
      when 'X'
        value += DIGITS['X']
      end
      # puts "Ending looking at char [#{char}], current value is #{value}"
    end
    value
  end
end