require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

describe Board do
  let(:player) { Player.new(@name, @symmbol) }
  let(:board) { Board.new }

  describe '#create_board' do
    it 'create the board' do
      expect(board.create_board(board)).to eql([])
    end
  end
end