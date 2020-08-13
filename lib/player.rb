class Player
  attr_reader :name, :symbol
  attr_accessor :player1, :player2, :player1_array, :player2_array

  def initialize(name, symbol)
    @players = {}
    @name = name
    @symbol = symbol
    @players[@name] = @symbol
  end

  def self.player1_array
    @player1_array = []
  end

  def self.player2_array
    @player2_array = []
  end

end

