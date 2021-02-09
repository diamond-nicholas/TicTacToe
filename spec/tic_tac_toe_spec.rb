require_relative '../lib/play_game'

game = Game.new('X')


describe Game do
  describe '#input_to_index' do
    it 'converts the user_input to an interger and minus one' do
      expect(game.input_to_index(7)).to eql(6)
    end
  end

  describe '#move' do
    it 'inserts user_input on the board' do
      expect(game.move([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 1, 'X')).to eql("X")
    end
  end

end