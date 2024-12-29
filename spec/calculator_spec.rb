# spec/string_calculator_spec.rb
require './calculator'

RSpec.describe Calculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = Calculator.new
      expect(calculator.add("")).to eq(0)
    end
  end
end