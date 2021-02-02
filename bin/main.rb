#!/usr/bin/env ruby

# class Tictactoe

# enter your name
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#WIN_COMBINATION
WIN_COMBINATION = [
  [0,1,2], #TOP
  [3,4,5], #MIDDLE
  [6,7,8], #BOTTOM
  [0,3,6], #LEFT
  [1,4,7], #MIDDLE
  [2,5,8], #RIGHT
  [0,4,8], #DIAGONAL LEFT
  [2,4,6] #DIAGONAL RIGHT
]

#input_to_index
def input_to_index(user_input)
  user_input.to_i - 1
end

#players move
def move(board, index, players_letter)
  board[index] = players_letter
end

def players_name
  puts 'Enter your name: '
end

def display_board(board)
  move = 0
  while move < 4
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts '----------'
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts '----------'
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
    puts 'now is player 1 turn'
    puts 'Select a number between 1 to 9, for choose an space'
    selected = gets.chomp.to_i - 1
    range_arr = (0...9).to_a

    if range_arr.include?(selected)
      puts 'Now is player 2 turn'
    else
      puts 'Sorry, thats an invalid move, Try again'
    end
    move += 1
  end
  puts 'Congratulations! you won the game'
end

# players_turn
def players_turn
  puts 'now is player 1 turn'
end
# WIN_COMBINATION = []

# win_move or draw_move
def win_move
  @win_movement = false
  @win = false
  if @win == true
    puts 'Congratulations! you won the game'
  else
    puts 'This is a draw game'
  end
end

board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

display_board(board)

# end
