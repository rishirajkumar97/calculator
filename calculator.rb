# lib/string_calculator.rb
class Calculator
  def add(numbers)
    return 0 if numbers.empty? # For Base case if the string is empty

    # Using Regex matching to split either based on comma or new line
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      # Using Map function and .to_i to change it to a integer list and perfom summation on the same
      numbers.split(delimiter).map(&:to_i).sum 
    else
      numbers.split(/,|\n/).map(&:to_i).sum
    end
  end
end