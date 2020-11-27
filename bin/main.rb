#!/usr/bin/env ruby
require_relative("../lib/game")
require_relative("../lib/player")
require_relative("../lib/board")
$b = Board.new
class Monitor
  def initialize
  puts "Welcome to Tic Tac Toe game \n\n "
  end

  def player_input
    puts "Player1 type your name \n"
      player_1_name = gets.chomp.strip.capitalize
      end
    puts "Player2 type your name \n "
    player_2_name = gets.chomp.strip.capitalize
       end
    end
    
    def moveX #allows player X to pick a square and updates gameboards
      puts 'Player X: Which square would you like?'
      @last_move = gets.chomp
      error
      @true_board[@last_move.to_i - 1] = 1
      @view_board[@last_move.to_i - 1] = 'X'
      @last_player = 'X'
    end
  
    def moveO #allows player O to pick a square and updates gameboards
      puts 'Player O: Which square would you like?'
      @last_move = gets.chomp
      error
      @true_board[@last_move.to_i - 1] = -1
      @view_board[@last_move.to_i - 1] = 'O'
      @last_player = 'O'
    end
  
    def error #displays an error if a player picks an unavaible square
      if @true_board[@last_move.to_i - 1] != 0
        puts 'Sorry, please pick another box:'
        display_board
        @last_move = gets.chomp
      end
    end
  

    end 
    








