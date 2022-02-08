=begin
  In this exercise you will be building error handling for a simple calculator.
  The goal is to have a working calculator that returns a string with the 
  following pattern: 16 + 51 = 67, when provided with arguments 16, 51 and +.
=end

class UnsupportedOperation < StandardError
end

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    result = "#{first_operand} #{operation} #{second_operand}"
    
    begin
      raise ArgumentError.new unless first_operand.is_a? Numeric
      raise ArgumentError.new unless second_operand.is_a? Numeric
      raise UnsupportedOperation.new("error") if !ALLOWED_OPERATIONS.include?(operation)

      case operation
      when "+"
        result += " = #{first_operand + second_operand}"
      when "*"
        result += " = #{first_operand * second_operand}"
      when "/"
        begin
          result += " = #{first_operand / second_operand}"
        rescue ZeroDivisionError => e
          "Division by zero is not allowed."
        end
      else
        raise UnsupportedOperation.new
      end
    rescue UnsupportedOperation => e
      "Unsupported Operation"
    end
  end

end

=begin
Update the SimpleCalculator.calculate() method to raise 
an UnsupportedOperation exception for unknown operation symbols.
=end

p SimpleCalculator.calculate(1, 2, '-')
# => Raises an UnsupportedOperation