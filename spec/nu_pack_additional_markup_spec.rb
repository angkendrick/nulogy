require_relative 'spec_helper'

describe NuPackAdditionalMarkup do

  before :each do
    @nupack = NuPackAdditionalMarkup.new(5703.6, 1, 1.2, 'dRugS')
  end

  it 'should have a flat_markup' do
    expect(@nupack.flat_markup).to eq(5703.6)
  end

  it 'should have a people_count' do
    expect(@nupack.people_count).to eq(1)
  end

  it 'should have a people_markup' do
    expect(@nupack.people_markup).to eq(1.2)
  end

  it 'should have a type' do
    expect(@nupack.type).to eq('drugs')
  end

  it 'should initialize type to a lowercase string' do
    expect(@nupack.type).to eq('drugs')
  end

  describe '#price_with_other_markup' do
    it 'returns the price with the included markup' do
      expect(@nupack.price_with_additional_markup).to eq(6199.8132000000005)
    end
  end

end