# frozen_string_literal: true

require 'config/support'

RSpec.describe TestCalculator, type: :module do
  subject { TestCalculator }

  describe 'test_calculate' do
    it 'return should defined' do
      expect(defined?(TestCalculator)).to eq('constant')
    end
  end

  describe '#add' do
    it 'should respond_to method' do
      expect(subject.respond_to?(:add)).to eq(true)
    end

    it 'return for valid string' do
      expect(''.add).to eq(0)
    end
  end
end
