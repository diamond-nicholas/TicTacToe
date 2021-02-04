class Player
  attr_reader :letter

  def initialize(letter)
    @letter = letter
  end
end

class Game
  attr_accessor :turn
  attr_reader :board

  def initialize(letter)
    @letter = letter
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @turn = true
  end

  WIN_COMBINATION = [
    [0, 1, 2], # TOP
    [3, 4, 5], # MIDDLE
    [6, 7, 8], # BOTTOM
    [0, 3, 6], # LEFT
    [1, 4, 7], # MIDDLE
    [2, 5, 8], # RIGHT
    [0, 4, 8], # DIAGONAL LEFT
    [2, 4, 6] # DIAGONAL RIGHT
  ].freeze

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move(board, index, players_letter)
    board[index] = players_letter
  end

  def position_taken?(board, index)
    board[index] != ' '
  end

  def valid_move?(board, index)
    if !position_taken?(board, index) && (0...9).to_a.include?(index)
      true
    else
      false
    end
  end

  def turn_count(board)
    counter = 0
    board.each do |element|
      counter += 1 if element.include?('X') || element.include?('O')
    end
    counter
  end

  def current_player(board)
    if turn_count(board).even?
      'X'
    else
      'O'
    end
  end

  def atual_player(board)
    if turn_count(board).odd?
      'X'
    else
      'O'
    end
  end

  def won?(board, letter_sym)
    letter_sym = atual_player(board)
    WIN_COMBINATION.each do |elem|
      count = 0
      elem.each do |a|
        count += 1 if board[a] == letter_sym
      end
      return elem if count >= 3
    end
    false
  end

  def full?(board)
    if !board.include?(' ')
      true
    else
      false
    end
  end

  def draw?(board, letter)
    if full?(board) && !won?(board, letter)
      true
    elsif !full?(board) && !won?(board, letter)
      false
    elsif won?(board, letter)
      false
    end
  end

  def over?(board, letter_sym)
    letter_sym = atual_player(board)
    if won?(board, letter_sym) || draw?(board, letter_sym) || full?(board)
      true
    else
      false
    end
  end

  def winner?(board, letter)
    if won?(board, letter)
      letter
    else
      'Game Over'
    end
  end
end
