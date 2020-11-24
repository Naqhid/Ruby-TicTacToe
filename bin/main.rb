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
    until Game.validate_name(player_1_name,'x') 
      puts 'Name is too short,try again'
      player_1_name = gets.chomp.strip.capitalize
    end
    puts "Player2 type your name \n "
    player_2_name = gets.chomp.strip.capitalize
    until Game.validate_name(player_2_name,'o') 
      puts 'Name is too short,try again'
      player_2_name = gets.chomp.strip.capitalize
    end
    end
    def player_move
       gets.chomp.to_i
    end
    end 
    

  end






