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

# board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

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

#position_taken?
def position_taken?(board, index)
  if board[index] == " "
    return false
  else
    return true
  end
end

#valid_move?
def valid_move?(board, index)
  if board[index] == " " &&  (0...9).to_a.include?(index)
    return true
  else
    return false
  end
end

# turn count counts the number of turns that have been played
def turn_count(board)
  counter = 0
  board.each do |element|
    if element == "x" || element == "o"
      counter += 1
    end
  end
  counter
end

#current player
def current_player(turn_count)
  if turn_count % 2 == 0
    return "x"
  else
    return "o"
  end
end

#turn
def turn
  input = puts "Enter a position from 1-9: "
  input = gets.chomp
  i = input_to_index(input)
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  counter = turn_count(board)
  current_turn = current_player(counter)

  if valid_move?(board, i) == true
    move(board, i, current_turn)
    display_board(board)
  else
    puts 'Sorry, thats an invalid move, enter another number'
  end
end


# work later
# display_board(board)

#won method
#won method
def won?(board)
  WIN_COMBINATION.each do |elem|
    count = 0
    elem.each do |a| #0
      if board[a] == "x"
        count += 1
      end
    end
    if count >= 3
      return elem
    end
  end
  return false
end

# full method
def full?(board)
  unless board.include?(" ")
    return true
  else
    return false
  end
end

#draw method
def draw?(board)
  if full?(board) && !won?(board)
    return true
  elsif !full?(board) && !won?(board)
    return false
  elsif won?(board)
    return false
  end
end
board = ["x", "o", "x", "o", "x", "o", "o", "x", "o"]
#over
def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end
p display_board(board)
p over?(board)

# def players_name
#   puts 'Enter your name: '
# end

# def display_board(board)
#   move = 0
#   while move < 4
#     puts "#{board[0]} | #{board[1]} | #{board[2]}"
#     puts '----------'
#     puts "#{board[3]} | #{board[4]} | #{board[5]}"
#     puts '----------'
#     puts "#{board[6]} | #{board[7]} | #{board[8]}"
#     puts 'now is player 1 turn'
#     puts 'Select a number between 1 to 9, for choose an space'
#     selected = gets.chomp.to_i - 1
#     range_arr = (0...9).to_a

#     if range_arr.include?(selected)
#       puts 'Now is player 2 turn'
#     else
#       puts 'Sorry, thats an invalid move, Try again'
#     end
#     move += 1
#   end
#   puts 'Congratulations! you won the game'
# end

# # players_turn
# def players_turn
#   puts 'now is player 1 turn'
# end
# # WIN_COMBINATION = []

# # win_move or draw_move
# def win_move
#   @win_movement = false
#   @win = false
#   if @win == true
#     puts 'Congratulations! you won the game'
#   else
#     puts 'This is a draw game'
#   end
# end

# board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

# display_board(board)

# end
