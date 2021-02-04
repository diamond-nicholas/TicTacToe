#!/usr/bin/env ruby

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

WIN_COMBINATION = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
].freeze

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

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

def turn(board, letter)
  loop_on = true
  while loop_on
    puts "Now is player #{letter} turn"
    input = puts 'Enter a position from 1-9: '
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

def won?(board, letter)
  WIN_COMBINATION.each do |elem|
    count = 0
    elem.each do |a|
      count += 1 if board[a] == letter
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

def over?(board, letter)
  if won?(board, letter) || draw?(board, letter) || full?(board)
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

def play(board)
  turn(board, current_player(board)) until over?(board, current_player(board))
  if won?(board, current_player(board))
    puts "Congratulations #{current_player(board)} player won!"
  elsif draw?(board, 'X') || draw?(board, 'O')
    puts 'This is a draw game!'
  end
end

play(board)
