class WordProblem
  OPERATORS = {
    'plus' => :+,
    'minus' => :-,
    'multiplied' => :*,
    'divided' => :/
  }.freeze

  def initialize(word_problem)
    @word_problem = word_problem
  end

  def answer
    solve_operations(parse_word_problem)
  end

  private

  def parse_word_problem
    numbers = @word_problem.scan(/(-?\d+)/).flatten.map(&:to_i)
    operators = @word_problem.scan(/(#{OPERATORS.keys.join('|')})/).flatten.map { |operation| OPERATORS[operation] }

    raise ArgumentError if numbers.empty? || operators.empty?

    operators.prepend(:+).zip(numbers).flatten
  end

  def solve_operations(operations)
    operations.each_slice(2).inject(0) { |result, (operation, number)| result.send(operation, number) }
  end
end
