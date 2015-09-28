module NuPackHelpers

  def is_number?(value)
    true if Float(value) rescue false
  end

  def convert_percentage_to_decimal(number)
    is_number?(number) ? number / 100.00 : 'handle error'
  end

  def two_decimal(number)
    is_number?(number) ? ('%.2f' % number).to_f : 'handle error'
  end

  def one_decimal(number)
    is_number?(number) ? ('%.1f' % number).to_f : 'handle error'
  end

end