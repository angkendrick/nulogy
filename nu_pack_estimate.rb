# nupack = NuPackEstimate.new
# nupack.calculate(5432, 1, 'drugs')
# 6199.81

require_relative 'nu_pack_helpers'
require_relative 'nu_pack_flat_markup'
require_relative 'nu_pack_markup_values'
require_relative 'nu_pack_additional_markup'

class NuPackEstimate

  include NuPackHelpers

  def calculate(base_price, number_of_people, type)
    markups = NuPackMarkupValues.new(5, 1.2)
    flat_markup = NuPackFlatMarkup.new(markups.flat_markup_percentage, base_price).price_with_flat_markup
    final_price = NuPackAdditionalMarkup.new(flat_markup, number_of_people, markups.people_markup_percentage, type).price_with_additional_markup
    two_decimal(final_price)
  end

end
