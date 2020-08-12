class Board
  def create_board
    a = %w[1 2 3]
    b = %w[4 5 6]
    c = %w[7 8 9]
    @board = [a, b, c]
  end

  def display_board
    p @board[0]
    p @board[1]
    p @board[2]
  end

  def place_symbol(position, symbol)
    @position = position
    @symbol = symbol
    if @position < 4
      replace(0)
    elsif @position > 3 && number < 7
      replace(1)
    elsif @position > 6
      replace(2)
    else
      puts 'does not exist you lost your turn'

    end
  end

  def replace(index)
    @position = @position.to_s
    @board[index].each_with_index do |element, index1|
      @board[index][index1] = @symbol if element == @position
    end
  end
end
