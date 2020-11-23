#!/usr/bin/env ruby
require_relative("../lib/game")
require_relative("../lib/player")
require_relative("../lib/board")
$b = Board.new
class Monitor
  def initialize
  puts "Welcome to Tic Tac Toe game \n\n "
  end

  until Game.validate_name(player_2_name,'o') 
    puts 'Name is too short,try again'
    player_2_name = gets.chomp.strip.capitalize
  end

  end






