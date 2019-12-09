class Garden
  DEFAULT_STUDENTS = %w[
    Alice Bob Charlie David
    Eve Fred Ginny Harriet
    Ileana Joseph Kincaid Larry
  ].freeze

  PLANTS = {
    'C' => :clover,
    'G' => :grass,
    'R' => :radishes,
    'V' => :violets
  }.freeze

  def initialize(garden_string, students = DEFAULT_STUDENTS.dup)
    @students = students.sort
    @garden = assign_garden(parse(garden_string))
    set_instance_vars
  end

  private

  def parse(garden_string)
    garden_string.split("\n").map(&:chars)
  end

  def assign_garden(rows)
    garden = {}

    rows.first.each_slice(2) do |slice|
      child = @students.shift
      plants = slice + rows.last.shift(2)
      garden[child] = plants.map { |plant| PLANTS[plant] }
    end
    garden
  end

  def set_instance_vars
    @garden.each do |name, plants|
      instance_variable_set("@#{name.downcase}", plants)
      singleton_class.class_eval { attr_reader :"#{name.downcase}" }
    end
  end
end
