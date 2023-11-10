module SimpleCalculator
  class UnsupportedOperation < ::StandardError
  end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)
    
    begin
      result = first_operand.method(operation).(second_operand)
      "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue
      ZeroDivisionError => e
      'Division by zero is not allowed.'
    end
  end
end
