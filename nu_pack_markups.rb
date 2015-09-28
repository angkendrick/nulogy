require_relative 'nu_pack_constants'

module NuPackMarkups

  include NuPackConstants

  def pax_percent(number_of_people)
    markup = 1.2
    one_decimal(number_of_people * markup)
  end

  def material_percent(type)
    case type.downcase
      when 'food'
        FOOD
      when 'drugs'
        DRUGS
      when 'electronics'
        ELECTRONICS
      else
        0
    end
  end

  def price_with_flat_markup(price)
    price + (price * convert_percentage(5))
  end

  def price_with_other_markup(price, number_of_people, type)
    price + (price * (convert_percentage(pax_percent(number_of_people)) + convert_percentage(material_percent(type))))
  end

end