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

  describe 'turn_count' do
    it 'returns the count of the tokens on the board' do
      expect(game.turn_count(['X', ' ', 'O', ' ', ' ', ' ', ' ', ' ', ' '])).to eql(2)
    end
  end

  describe 'current_player' do
    it 'returns X if the turn_count is even' do
      expect(game.current_player(['X', ' ', 'O', ' ', ' ', ' ', ' ', ' ', ' '])).to eql('X')
    end
  end

  describe 'atual_player' do
    it 'returns X if the turn_count is odd' do
      expect(game.atual_player(['X', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])).to eql('X')
    end
  end

  describe 'won?' do
    it 'checks the win_combination and return the elements if it is greater or equal to three' do
      expect(game.won?(['X', 'O', 'X', 'O', 'X', 'O', 'X', 'O', 'X'], 'XO')).to eql([0, 4, 8])
    end
  end


  describe 'full?' do
    it 'returns true if board does not include an empty space' do
      expect(game.full?(['X', 'O', 'X', 'O', 'X', 'O', 'X', 'O', 'X'])).to eql(true)
    end
  end

  describe 'draw?' do
    it 'returns true if board is full and game not won' do
      expect(game.draw?(['X', 'O', 'O', 'O', 'X', 'X', 'X', 'O', 'O'], 'XO')).to eql(true)
    end

    it 'returns false if board is not full and game is not won' do
      expect(game.draw?(['X', ' ', 'O', 'O', 'X', 'X', ' ', 'O', 'O'], 'XO')).to eql(false)
    end

    it 'returns false if the game is won' do
      expect(game.draw?(['X', 'O', 'X', 'O', 'X', 'O', 'X', 'O', 'X'], 'XO')).to eql(false)
    end
  end

  describe 'over?' do
    it 'returns true if the game is won' do
      expect(game.over?(['X', 'O', 'X', 'O', 'X', 'O', 'X', 'O', 'X'], 'XO')).to eql(true)
    end

    it 'returns true if the game is a draw' do
      expect(game.over?(['X', 'O', 'O', 'O', 'X', 'X', 'X', 'O', 'O'], 'XO')).to eql(true)
    end

    it 'returns true if the board is full' do
      expect(game.draw?(['X', 'O', 'O', 'O', 'X', 'X', 'X', 'O', 'O'], 'XO')).to eql(true)
    end
  end

  describe 'winner?' do
    it 'returns the winning letter if game is won' do
      expect(game.winner?(['X', 'O', 'X', 'O', 'X', 'O', 'X', 'O', 'X'], 'X')).to eql('X')
    end
  end

end