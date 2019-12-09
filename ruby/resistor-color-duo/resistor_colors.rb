class ResistorColors
  COLOR_CODES = %w(black brown red orange yellow green blue violet grey white).freeze
  
  def self.value(colors)
    colors.each_with_object("") { |color, string| string << COLOR_CODES.index(color).to_s }.to_i
  end
end
