class Player
  attr_reader :name, :symbol, :array, :score

  def initialize(name, symbol)
    @array = []
    @name = name
    @symbol = symbol
    @score = 0
  end

  def score_up
    @score += 1
  end

  def array=(number)
    array.push(number)
  end

  def clear_array
    array.clear
  end
end
