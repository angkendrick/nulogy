require_relative 'nu_pack_helpers'
require_relative 'nu_pack_markup_values'

class NuPackAdditionalMarkup

  include NuPackHelpers

  attr_reader :flat_markup, :people_count, :people_markup, :type

  def initialize(flat_markup, people_count, people_markup, type)
    @flat_markup = flat_markup
    @people_count = people_count
    @people_markup = people_markup
    @type = type.downcase
  end

  def price_with_additional_markup
    @flat_markup + (@flat_markup * (convert_percentage_to_decimal(people_percent) + convert_percentage_to_decimal(material_percent)))
  end

  protected

  def people_percent
    @people_count * @people_markup
  end

  def material_percent
    markups = NuPackMarkupValues.new
    markups.material_markup_percentage.has_key?(@type) ? markups.material_markup_percentage[@type] : 0
  end

end