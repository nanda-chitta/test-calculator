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

    context 'when single digit' do
      it 'return the "digit" which provided' do
        expect('8'.add).to eq(8)
      end
    end
  end
end
