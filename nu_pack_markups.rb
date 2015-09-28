module NuPackMarkups

  def pax_percent(number_of_people)
    markup = 1.2
    one_decimal(number_of_people * markup)
  end

  def material_percent(type)
    material.has_key?(type) ? material[type] : 0
  end

  def price_with_flat_markup(price)
    price + (price * convert_percentage_to_decimal(5))
  end

  def price_with_other_markup(price, number_of_people, type)
    price + (price * (convert_percentage_to_decimal(pax_percent(number_of_people)) + convert_percentage_to_decimal(material_percent(type))))
  end

end