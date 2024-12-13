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

    context 'when single number' do
      it 'return the "number" which provided' do
        expect('8'.add).to eq(8)
      end

      it 'return error for other single digit number string' do
        expect('5'.add).to eq(5)
      end

      it 'return error for other any digit number string' do
        expect('30'.add).to eq(30)
      end
    end

    context 'when two numbers' do
      it 'return the sum of two number' do
        expect('5,8'.add).to eq(13)
      end

      it 'return the sum of two digits number' do
        expect('17,8'.add).to eq(25)
      end
    end

    context 'when multiple numbers' do
      it 'return the sum of the numbers input' do
        expect('12,10,16'.add).to eq(38)
      end

      it 'return the sum of the 3 digit numbers' do
        expect('300,250,725'.add).to eq(1275)
      end
    end
  end
end
