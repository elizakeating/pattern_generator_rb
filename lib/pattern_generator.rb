# A pattern follows these rules:

# A . in a pattern represents a place that can be filled with a capital letter A-Z
# A # in a pattern represents a place that can be filled with a digit 0-9
# A @ in a pattern represents a place that can be filled with a digit or letter 0 up to Z

class PatternGenerator
  def initialize
    @alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    @digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
  end

  def verify(serial_number, pattern)
    serial_number = serial_number.chars
    verified = false

    pattern.chars.each_with_index do |character, index|
      if character == "."
        if @alphabet.include?(serial_number[index])
          verified = true
        else
          verified = false
          break
        end
      elsif character == "#"
        if @digits.include?(serial_number[index])
          verified = true
        else
          verified = false
          break
        end
      elsif character == "@"
        if @alphabet.include?(serial_number[index]) || @digits.include?(serial_number[index])
          verified = true
        else
          verified = false
          break
        end
      end
    end

    verified
  end
end
