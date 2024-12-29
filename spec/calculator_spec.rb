# spec/string_calculator_spec.rb
require './calculator'

RSpec.describe Calculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = Calculator.new
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number itself for a single number string' do
      calculator = Calculator.new
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add("1,2")).to eq(3)
    end

    it 'returns the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add("1,2,10,20")).to eq(33)
    end

    it 'handles new lines and commas between numbers' do
      calculator = Calculator.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'supports different delimiters' do
      calculator = Calculator.new
      expect(calculator.add("//;\n1;2;4;6")).to eq(13)
    end

    it 'raises an exception for negative numbers' do
      calculator = Calculator.new
      expect { calculator.add("1,-2,3,-4") }.to raise_error("Negative numbers not allowed: -2, -4")
    end
  end
end