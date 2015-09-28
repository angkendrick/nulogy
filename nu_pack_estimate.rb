require_relative 'nu_pack_helpers'
require_relative 'nu_pack_markups'
require_relative 'nu_pack_materials'

class NuPackEstimate

  include NuPackHelpers, NuPackMarkups, NuPackMaterials

  def calculate(base_price, number_of_people, type)
    flat_markup = price_with_flat_markup(base_price)
    final_price = price_with_other_markup(flat_markup, number_of_people, type)
    two_decimal(final_price)
  end

end
