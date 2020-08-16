class Board
  WINNING_MOVES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
  attr_reader :board

  def create_board
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def place_symbol(position, player)
    @position = position
    @symbol = player.symbol
    @board.each_with_index do |element, index|
      if element == @position
        player.array = element
        @board[index] = @symbol
      end
    end
  end

  def validate_turn(turn)
    validate = false

    @board.each do |element|
      if element == turn
        validate = true
        break
      end
    end

    validate != false
  end

  def validate_symbol(symbol)
    symbol.include?('X') || symbol.include?('O') ? true : false
  end

  def check_win(array)
    WINNING_MOVES.length.times do |index|
      return true if WINNING_MOVES[index].all? { |element| array.include?(element) }
    end
    false
  end
end
