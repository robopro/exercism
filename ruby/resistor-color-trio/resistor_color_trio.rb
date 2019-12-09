class ResistorColorTrio
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def initialize(colors)
    raise ArgumentError unless (colors - COLORS).empty?

    @colors = color_code(colors.first(2))
    @zeroes = zeroes(colors.last)
  end

  def label
    "Resistor value: #{humanize(@colors + @zeroes)}"
  end

  private

  def color_code(colors)
    colors.map { |color| COLORS.index color }.join
  end

  def zeroes(color)
    "0" * COLORS.index(color)
  end

  def humanize(num)
    (num.to_i % 1000).zero? ? "#{num.to_i / 1000} kiloohms" : "#{num} ohms"
  end
end
