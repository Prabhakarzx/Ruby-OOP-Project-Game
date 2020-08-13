class Player
  attr_reader :name, :symbol, :array
  attr_accessor :score

  def initialize(name, symbol)
    @array = []
    @name = name
    @symbol = symbol
    @score = 0
  end

  def array=(number)
    array.push(number)
  end

  def clear_array
    array.clear
  end
end
