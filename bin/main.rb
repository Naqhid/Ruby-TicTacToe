#!/usr/bin/env ruby
require_relative("../lib/game")
require_relative("../lib/player")
require_relative("../lib/board")

class  Game 
  def  self.validate_name(name,sign)
    if name.length  < 3
      puts "too short name try another"
      return false
    else  
    Player.new(name,sign)
    
      return true
    end 
  end
end

$store = [ ]
class Player

  attr_reader :name, :sign

  def self.store1
    $store
  end
    def initialize(name, sign)
      @name = name
      @sign = sign
    $store << @name
    end
  end 

  class Board
    @@view_board = [0,1,2,3,4,5,6,7,8] 
    @@combinations = [ [0,1,2], [3,0,6],[3,4,5],[6,7,8],[1,4,7],[2,5,8],[0,4,8],[6,4,2] ]
     
                    
        
           def initialize
          
               @true_board = [10, 10, 10, 10, 10, 10, 10, 10, 10] 
             
           end
           def display_board 
            puts @@view_board[0].to_s + '|' + @@view_board[1].to_s + '|' + @@view_board[2].to_s
            puts '-----'
            puts @@view_board[3].to_s + '|' + @@view_board[4].to_s + '|' + @@view_board[5].to_s
            puts '-----'
            puts @@view_board[6].to_s + '|' + @@view_board[7].to_s + '|' + @@view_board[8].to_s
          end
  
          def update_board(pos,sign)
            puts  sign == 'x'   ?  @true_board[pos] = 0 : @true_board[pos] = 1
            if @@view_board[pos].is_a?(Numeric)
              @@view_board[pos] = sign
              return true
            else
              puts  "invalid move try again!"
              return false
            end
            
          end  
          def win_update
          
             puts " winnerr is someone"
               end
               end
               return false
             
             end
        end 
  
  


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
      puts "#{player_1_name} u have been assigned sign : x"
    until Game.validate_name(player_1_name,'x') 
    
      puts 'Name is too short,try again'
      player_1_name = gets.chomp.strip.capitalize
    end
    
    puts "Player2 type your name \n "
    player_2_name = gets.chomp.strip.capitalize
    puts "#{player_2_name} u have been assigned sign : o"
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

  # m.display_board
  m.player_input 
  c=0
  # p = player.new
  while c < 9
    
  if c % 2 == 0 
   
    $b.display_board
    $b.win_update
       puts "#{Player.store1[0]} make your move and choose which square you like "
      
       $d = m.player_move
       
   
       until  $b.update_board($d,'x') 
        $b.win_update
        $b.update_board($d,'x') 
        
         $d = m.player_move 
       
       end
   
  else
    $b.display_board
    $b.win_update
    puts "#{Player.store1[1]} make your move and choose which square you like"
   
    $d = m.player_move
    
    
    until  $b.update_board($d,'o')  
      $b.win_update
      $b.update_board($d,'o')  
     
     $d = m.player_move
    end

    
  end
  c += 1
  end



  $b.win_update
  puts " match result in a draw"



