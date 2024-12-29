# Calculator

A simple string-based calculator built using **Ruby** with **TDD practices**. This project demonstrates the Test-Driven Development (TDD) approach by implementing a string calculator that supports custom delimiters, handling multiple delimiters, and handling various edge cases like negative numbers.

---

## Features

- Add numbers provided as a comma-separated string.
- Supports custom delimiters of any length, e.g., `//[***]\n1***2***3`.
- Handles multiple custom delimiters, e.g., `//[*][%]\n1*2%3`.
- Handles delimiters of varying lengths, e.g., `//[***][%%]\n1***2%%3`.
- Throws exceptions for negative numbers with details of the negative values.

---

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd calculator
2. Install dependencies:
    ``` bash
        bundle install
3. Run tests to ensure everything is set up correctly:
    ``` bash
        bundle exec rspec

## Usage

### Run the Calculator

1. Navigate to the project directory:
   ``` bash
   cd calculator
2. Start the IRB Terminal using the command
    ``` bash
    irb
3. Use the calculator.rb file to perform calculations. For example:

``` ruby
require './calculator'

calculator = Calculator.new

# Examples
puts calculator.add("")                 # Output: 0
puts calculator.add("1")                # Output: 1
puts calculator.add("1,2")              # Output: 3
puts calculator.add("1\n2,3")           # Output: 6
puts calculator.add("//[***]\n1***2***3") # Output: 6
puts calculator.add("//[*][%]\n1*2%3")  # Output: 6
puts calculator.add("//[***][%%]\n1***2%%3") # Output: 6
