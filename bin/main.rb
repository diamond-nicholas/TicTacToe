#!/usr/bin/env ruby
# class Tictactoe


  def display_board(board)
    while board.include?(" ")
      puts "#{board[0]} | #{board[1]} | #{board[2]}"
      puts "----------"
      puts "#{board[3]} | #{board[4]} | #{board[5]}"
      puts "----------"
      puts "#{board[6]} | #{board[7]} | #{board[8]}"

      puts "Select a number between 1 to 9, for choose an space"
      selected = (gets.chomp.to_i) - 1
      range_arr = (0...9).to_a

      if range_arr.include?(selected)
        puts "Nice, now is my turn"
      else
        puts "Sorry, thats an invalid option, Try again"
      end
    end
  end

  def win_combination
    winer_combination = true
    if winer_combination = true
      puts "Congratulations! you win!"
    else
      puts "Sorry , good luck for next game"
    end
  end

  board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]

  display_board(board)


# end
