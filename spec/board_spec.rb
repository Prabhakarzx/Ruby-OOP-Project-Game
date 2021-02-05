require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

describe Board do
  let(:player) { Player.new('Ppandey', 'X') }
  let(:baord) { Board.new }

  describe 'create_board' do
    it 'create the baord' do
      expect(baord.create_board(baord)).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end




 
end