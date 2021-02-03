#!/usr/bin/env ruby

# class Tictactoe

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# WIN_COMBINATION
WIN_COMBINATION = [
  [0, 1, 2], # TOP
  [3, 4, 5], # MIDDLE
  [6, 7, 8], # BOTTOM
  [0, 3, 6], # LEFT
  [1, 4, 7], # MIDDLE
  [2, 5, 8], # RIGHT
  [0, 4, 8], # DIAGONAL LEFT
  [2, 4, 6] # DIAGONAL RIGHT
]

board = [' ', 'X', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

# input_to_index
def input_to_index(user_input)
  user_input.to_i - 1
end

# players move
def move(board, index, players_letter)
  board[index] = players_letter
end

# position_taken?
def position_taken?(board, index)
  board[index] != ' '
end

# valid_move?
def valid_move?(board, index)
  if !position_taken?(board, index) && (0...9).to_a.include?(index)
    true
  else
    false
  end
end

# turn count counts the number of turns that have been played
def turn_count(board)
  counter = 0
  board.each do |element|
    if element == 'X' || element == 'O'
      counter += 1
    end
  end
  counter
end


# current player
def current_player(board)
  if turn_count(board) % 2 == 0
    'X'
  else
    'O'
  end
end

def turn(board, letter)
  loop_on = true
  while loop_on
    puts "Now is player #{letter} turn"
    input = puts "Enter a position from 1-9: "
    input = gets.chomp
    i = input_to_index(input)
    if valid_move?(board, i) == true
      move(board, i, current_player(board))
      display_board(board)
      loop_on = false
    else
      puts 'Sorry, thats an invalid move, enter another number'
    end
  end
end

# won method
def won?(board, letter)
  WIN_COMBINATION.each do |elem|
    count = 0
    elem.each do |a|
      if board[a] == letter
        count += 1
      end
    end
    if count >= 3
      return elem
    end
  end
  false
end

# full method
def full?(board)
  unless board.include?(' ')
    true
  else
    false
  end
end

# draw method
def draw?(board, letter)
  if full?(board) && !won?(board, letter)
    true
  elsif !full?(board) && !won?(board, letter)
    false
  elsif won?(board, letter)
    false
  end
end

# over
def over?(board, letter)
  if won?(board, letter) || draw?(board, letter) || full?(board)
    true
  else
    false
  end
end

# winner method
def winner?(board, letter)
  if won?(board, 'X')
    'X'
  elsif won?(board, 'O')
    'O'
  else
    'Game Over'
  end
end

# play method
def play(board)
  until over?(board, current_player(board))
    turn(board, current_player(board))
  end
  if won?(board, current_player(board))
    puts "Congratulations #{current_player(board)} player won!"
  elsif draw?(board, 'X') || draw?(board, 'O')
    puts 'This is a draw game!'
  end
end

play(board)
