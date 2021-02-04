#!/usr/bin/env ruby

require './lib/play_game.rb'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

play_board = Game.new("X")

until play_board.over?(play_board.board, play_board.current_player(play_board.board))
  loop_on = true
  while loop_on
    puts "Now is player #{play_board.current_player(play_board.board)} turn"
    input = puts 'Enter a position from 1-9: '
    input = gets.chomp
    i = play_board.input_to_index(input)
      if play_board.valid_move?(play_board.board, i) == true
        play_board.move(play_board.board, i, play_board.current_player(play_board.board))
        display_board(play_board.board)
        loop_on = false
      else
        puts 'Sorry, thats an invalid move, enter another number'
      end
  end
end

if play_board.won?(play_board.board, play_board.current_player(play_board.board))
  puts "Congratulations #{play_board.current_player(play_board.board)} player won!"
elsif play_board.draw?(play_board.board, 'X') || play_board.draw?(play_board.board, 'O')
  puts 'This is a draw game!'
end
