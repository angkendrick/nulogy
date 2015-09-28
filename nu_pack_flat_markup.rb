require_relative 'nu_pack_helpers'

class NuPackFlatMarkup

  include NuPackHelpers

  attr_reader :markup, :price

  def initialize(markup, price)
    @markup = markup
    @price = price
  end

  def price_with_flat_markup
    @price + (@price * convert_percentage_to_decimal(@markup))
  end

end