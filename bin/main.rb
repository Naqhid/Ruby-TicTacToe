#!/usr/bin/env ruby
require_relative("../lib/game")
require_relative("../lib/player")
require_relative("../lib/board")
$b = Board.new
class Monitor
  def initialize
  puts "Welcome to Tic Tac Toe game \n\n "
  end

  def display_board 
    $b.display_board
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

  m = Monitor.new

  m.display_board
  m.player_input 
  c=0
  # p = player.new
  while c < 9
    
  if c % 2 == 0 
       puts "player1 make ur move and choose which square u like "
       $b.win_update
       $d = m.player_move
       
      #  $b.display_board
       until  $b.update_board($d,'x') 
        $b.update_board($d,'x') 
        $b.win_update
         $d = m.player_move 
       
       end
       $b.display_board
  else
    puts "player2 make ur move and choose which square u like"
    $b.win_update
    $d = m.player_move
    
    # $b.display_board
    until  $b.update_board($d,'o')  
      $b.update_board($d,'o')  
      $b.win_update
     $d = m.player_move
    end
    $b.display_board
    
  end
  c += 1
  end




