class Board
  def create_board
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
    p @board[0..2]
    p @board[3..5]
    p @board[6..9]
  end

  def place_symbol(position, symbol)
    @position = position
    @symbol = symbol
      @board.each_with_index do |element, index|
        if element == @position 
          @board[index] = @symbol
        end
      end
  end

  def validate (turn)
    validate = false
    
    @board.each_with_index do |element|
      if element == turn 
        validate = true
        break
      end
    end
    
  end 
end
