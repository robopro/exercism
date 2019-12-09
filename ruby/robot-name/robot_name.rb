require 'byebug'

class Robot
  attr_reader :name

  @available_names = ("AA000".."ZZ999").to_a

  def initialize
    @name = self.class.available_names.pop
  end

  def reset
    self.class.available_names.prepend(@name)
    @name = self.class.available_names.pop
  end

  class << self
    attr_reader :available_names

    def forget
      @available_names = ("AA000".."ZZ999").to_a
    end
  end
end
