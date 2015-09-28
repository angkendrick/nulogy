require_relative 'nu_pack_helpers'
require_relative 'nu_pack_markups'
require_relative 'nu_pack_materials'

require_relative 'nu_pack_flat_markup'
require_relative 'nu_pack_markup_values'

class NuPackEstimate

  include NuPackHelpers, NuPackMarkups, NuPackMaterials

  def calculate(base_price, number_of_people, type)
    markups = NuPackMarkupValues.new(5, 1.2)
    flat_markup = NuPackFlatMarkup.new(markups.flat_markup_percentage, base_price).price_with_flat_markup
    final_price = price_with_other_markup(flat_markup, number_of_people, type)
    two_decimal(final_price)
  end

end
