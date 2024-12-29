# lib/string_calculator.rb
class Calculator
  def add(numbers)
    return 0 if numbers.empty? # For Base case if the string is empty

    # Using Regex matching to split either based on comma or new line
    delimiter = /,|\n/ # Default Delimiter
    if numbers.start_with?("//")
      custom_delimiter, numbers = numbers[2..].split("\n", 2)
      delimiter = custom_delimiter
    end

    # Using Map function and .to_i to change it to a integer list and perfom summation on the same
    num_list = numbers.split(delimiter).map(&:to_i)
    negatives = num_list.select(&:negative?)

    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    num_list.sum
  end
end