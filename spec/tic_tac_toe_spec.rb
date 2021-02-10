require_relative '../lib/play_game'

game = Game.new('X')


describe Game do
  describe '#input_to_index' do
    it 'converts the user_input to an interger and minus one' do
      expect(game.input_to_index(7)).to eql(6)
    end
  end

  describe '#move' do
    it 'returns the user token' do
      expect(game.move([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 1, 'X')).to eql("X")
    end
  end

  describe 'position_taken?' do
    it 'returns false if the postion on the board has no token' do
      expect(game.position_taken?([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 1)).to eql(false)

    end
  end

  describe 'valid_move?' do
    it 'returns true if position is not taken' do
      expect(game.valid_move?([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 1)).to eql(true)
    end

    it 'returns true if the range between zero to nine exclusive include an index on the board' do
      expect(game.valid_move?([' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], 0...9)).to eql(false)
    end
  end


end