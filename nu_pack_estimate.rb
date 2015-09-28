class NuPackEstimate

  def calculate(base_price, number_of_people, type)
    flat_markup = price_with_flat_markup(base_price)
    final_price = price_with_other_markup(flat_markup, number_of_people, type)
    two_decimal(final_price)
  end

  # helpers
  def convert_percentage(number)
    number / 100.00
  end

  def two_decimal(number)
    ('%.2f' % number).to_f
  end

  def one_decimal(number)
    ('%.1f' % number).to_f
  end

  # functions
  def pax_percent(number_of_people)
    markup = 1.2
    one_decimal(number_of_people * markup)
  end

  def material_percent(type)
    case type.downcase
      when 'food'
        13
      when 'drugs'
        7.5
      when 'electronics'
        2
      else
        nil
    end
  end

  def price_with_flat_markup(price)
    price + (price * convert_percentage(5))
  end

  def price_with_other_markup(price, number_of_people, type)
    price + (price * (convert_percentage(pax_percent(number_of_people)) + convert_percentage(material_percent(type))))
  end

end
