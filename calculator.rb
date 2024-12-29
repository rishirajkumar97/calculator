# frozen_string_literal: true

# calculator.rb
class Calculator
  def add(numbers)
    return 0 if numbers.empty? # For Base case if the string is empty

    # Using Regex matching to split either based on comma or new line
    delimiter = /,|\n/ # Default Delimiter
    if numbers.start_with?('//')
      delimiter_section, numbers = numbers[2..].split("\n", 2)
      delimiter = parse_delimiters(delimiter_section)
    end

    # Using Map function and .to_i to change it to a integer list and perfom summation on the same
    num_list = numbers.split(delimiter).map(&:to_i)

    negatives = num_list.select(&:negative?)

    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    num_list.sum
  end

  private

  def parse_delimiters(delimiter_section)
    if delimiter_section.start_with?('[') && delimiter_section.end_with?(']')
      # Extract each delimiter enclosed in square brackets
      delimiters = delimiter_section.scan(/\[([^\]]+)\]/).flatten
      # Escape special characters and combine into a single regex
      Regexp.new(delimiters.map { |d| Regexp.escape(d) }.join('|'))
    else
      # Single character delimiter
      Regexp.new(Regexp.escape(delimiter_section))
    end
  end
end
