require_relative 'spec_helper'

describe NuPackFlatMarkup do

  before :each do
    @nupack = NuPackFlatMarkup.new(5, 5432)
    @nupack2 = NuPackFlatMarkup.new(13, 3918.98)
  end

  it 'should have a markup percent' do
    expect(@nupack.markup).to eq(5)
    expect(@nupack2.markup).to eq(13)
  end

  it 'should have a price' do
    expect(@nupack.price).to eq(5432)
    expect(@nupack2.price).to eq(3918.98)
  end

  describe '#price_with_flat_markup' do
    it 'returns the price with the included markup' do
      expect(@nupack.price_with_flat_markup).to eq(5703.6)
      expect(@nupack2.price_with_flat_markup).to eq(4428.4474)
    end
  end

end