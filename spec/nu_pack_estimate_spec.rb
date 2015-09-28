require_relative 'spec_helper'

describe NuPackEstimate do

  before :each do
    @nupack = NuPackEstimate.new
  end

  describe '#calculate' do
    it 'returns the price with the included flat markup, person markup and materials markup' do
      expect(@nupack.calculate(1299.99, 3, 'food')).to eq(1591.58)
      expect(@nupack.calculate(5432.00, 1, 'drugs')).to eq(6199.81)
      expect(@nupack.calculate(12456.95, 4, 'books')).to eq(13707.63)
    end
  end

end

