require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

describe Board do
  let(:player) { Player.new('Ppandey', 'X') }
  let(:board) { Board.new }

  describe 'create_board' do
    it 'create the board' do
      expect(board.create_board(board)).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end




 
end