# frozen_string_literal: true

RSpec.describe TestCalculator, type: :module do
  describe 'test_calculate' do
    it 'return should defined' do
      expect(defined?(TestCalculator)).to eq('constant')
    end
  end
end
