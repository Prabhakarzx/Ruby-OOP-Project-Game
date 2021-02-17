

RSpec.describe Player do
  let(:player) { Player.new(@name, @symbol) }
  describe 'create a new player' do
    it 'return the player name' do
      expect(player.name).to eql(@name)
    end
  end
end