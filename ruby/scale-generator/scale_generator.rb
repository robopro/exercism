class Scale
  CHROMATIC_SCALE = {
    sharps: %w[A A# B C C# D D# E F F# G G#],
    flats: %w[A Bb B C Db D Eb E F Gb G Ab]
  }.freeze

  TONICS = {
    sharps: %w[C G D A E B F# a e b f# c# g# d#],
    flats: %w[F Bb Eb Ab Db Gb d g c f bb eb]
  }.freeze

  INTERVAL_STEPS = {
    'm' => 1,
    'M' => 2,
    'A' => 3
  }.freeze

  def initialize(tonic, mode, intervals = 'm' * 12)
    @tonic = tonic
    @mode = mode
    @intervals = intervals
    @chromatic = find_chromatic
  end

  def name
    "#{@tonic.capitalize} #{@mode}"
  end

  def pitches
    index = @chromatic.find_index(@tonic.capitalize)

    @intervals.chars.each_with_object([]) do |interval, scale|
      scale << @chromatic[index % @chromatic.length]
      index += INTERVAL_STEPS[interval]
    end
  end

  private

  def find_chromatic
    CHROMATIC_SCALE[tonic]
  end

  def tonic
    TONICS.find { |_, v| v.include? @tonic }.first
  end
end
