#!/usr/bin/env ruby
# class Tictactoe
  
  
  def display_board(board)
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts "----------"
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts "----------"
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
  end

  board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
  
  
  display_board(board)
  
  
  
  def user_input
    position = puts "choose a position from 1-9: "
    position = (gets.chomp().to_i) - 1
  end
  
# end
