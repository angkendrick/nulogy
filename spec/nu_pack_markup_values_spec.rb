require_relative 'spec_helper'

describe NuPackMarkupValues do

  before :each do
    @nupack = NuPackMarkupValues.new
    @nupack2 = NuPackMarkupValues.new(1, 2, {'three' => 3})
  end

  it 'should initialize with default values' do
    expect(@nupack.flat_markup_percentage).to eq(0)
    expect(@nupack.people_markup_percentage).to eq(0)
    expect(@nupack.material_markup_percentage).to eq({'food' => 13, 'drugs' => 7.5, 'electronics' => 2})
  end

  it 'should initialize with passed in values' do
    expect(@nupack2.flat_markup_percentage).to eq(1)
    expect(@nupack2.people_markup_percentage).to eq(2)
    expect(@nupack2.material_markup_percentage).to eq({'three' => 3})
  end

end