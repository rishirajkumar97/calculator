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
  end
end