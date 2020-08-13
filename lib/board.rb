require_relative '../lib/Players.rb'

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




class Logic
  attr_reader :board
  WINNING_MOVES = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze
  def initialize
    @player1_array = Players.player1_array
    @player2_array = Players.player2_array
  end

  
end