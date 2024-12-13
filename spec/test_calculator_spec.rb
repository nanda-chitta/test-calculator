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

    context 'when three digit numbers' do
      it 'return the sum of the numbers input' do
        expect('12,10,16'.add).to eq(38)
      end

      it 'return the sum of the 3 digit numbers' do
        expect('300,250,725'.add).to eq(1275)
      end
    end

    context 'when many numbers' do
      it 'return the sum of many numbers' do
        expect((["15"]*50).join(',').add).to eq(750)
      end
    end

    context 'when newlines as delimiters' do
      it 'return sum of the number'do
        expect("150\n10".add).to eq(160)
      end

      it 'return sum of the string number with "\n" and ","' do
        expect("12\n52,24".add).to eq(88)
      end
    end

    context 'when custom delimiters' do
      it 'should allow the semicolon' do
        expect("//;\n19;12;14".add).to eq(45)
      end

      it 'should allow the letter' do
        expect("//abc\n52$32@18%14".add).to eq(116)
      end
    end

    context 'when negative numbers' do
      it 'should raise an exception for negative number' do
        expect { '-124'.add }.to raise_error
      end

      it 'should raise an exception with message for negative number' do
        expect { '10abdbvb-babd10djbvfhvg-2bjdsbj-5'.add }.to raise_error('negative numbers not allowed: -2, -5')
      end
    end
  end
end
