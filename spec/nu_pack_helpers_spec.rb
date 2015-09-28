require_relative 'spec_helper'

describe NuPackHelpers do

  class TempClass
  end

  before :each do
    @temp = TempClass.new
    @temp.extend NuPackHelpers
  end

  describe '#is_number?' do
    it 'should return truthy' do
      expect(@temp.is_number?(1)).to be_truthy
    end
    it 'should return falsey' do
      expect(@temp.is_number?('string')).to be_falsey
    end
  end

  describe '#convert_percentage' do
    it 'should convert a number to a decimal representation' do
      expect(@temp.convert_percentage_to_decimal(10)).to eq(0.1)
      expect(@temp.convert_percentage_to_decimal(1)).to eq(0.01)
    end
    it 'should return a string error message' do
      expect(@temp.convert_percentage_to_decimal('string')).to eq('handle error')
    end
  end

  describe '#two_decimal' do
    it 'should convert a number to include two decimal places' do
      expect(@temp.two_decimal(10)).to eq(10.00)
      expect(@temp.two_decimal(0.111111)).to eq(0.11)
    end
    it 'should return a string error message' do
      expect(@temp.two_decimal('string')).to eq('handle error')
    end

  end

  describe '#one_decimal' do
    it 'should convert a number to include one decimal place' do
      expect(@temp.one_decimal(10)).to eq(10.0)
      expect(@temp.one_decimal(0.111111)).to eq(0.1)
    end
    it 'should return a string error message' do
      expect(@temp.one_decimal('string')).to eq('handle error')
    end
  end

end