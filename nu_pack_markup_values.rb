class NuPackMarkupValues

  attr_reader :flat_markup_percentage, :people_markup_percentage, :material_markup_percentage

  def initialize(flat_markup = 0, people_markup = 0, material_markup = {'food' => 13, 'drugs' => 7.5, 'electronics' => 2})
    @flat_markup_percentage = flat_markup
    @people_markup_percentage = people_markup
    @material_markup_percentage = material_markup
  end

end