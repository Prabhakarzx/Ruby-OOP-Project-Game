class Player
  attr_reader :name, :symbol, :array

  def initialize(name, symbol)
    @array = []
    @name = name
    @symbol = symbol
  end

  def array=(number)
    self.array.push(number)
  end

end

