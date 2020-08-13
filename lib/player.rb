class Player
  attr_reader :name, :symbol, :array

  def initialize(name, symbol)
    @array = []
    @name = name
    @symbol = symbol
  end

  def array=(number)
    array.push(number)
  end
  
  def clear_array 
    self.array.clear
  end
end
