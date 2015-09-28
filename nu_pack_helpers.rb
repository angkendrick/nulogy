module NuPackHelpers

  def convert_percentage(number)
    number / 100.00
  end

  def two_decimal(number)
    ('%.2f' % number).to_f
  end

  def one_decimal(number)
    ('%.1f' % number).to_f
  end

end