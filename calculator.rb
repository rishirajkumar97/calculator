# lib/string_calculator.rb
class Calculator
  def add(numbers)
    return 0 if numbers.empty? # For Base case if the string is empty

    numbers.split(",").map(&:to_i).sum  # Using Map function and .to_i to change it to a integer list and perfom summation on the same
  end
end