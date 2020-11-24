require_relative("./board")
require_relative("./player")
class  Game 
  def  self.validate_name(name,sign)
    if name.length  < 3
      puts "too short name try another"
      return false
    else  
    Player.new(name,sign)
    
      return true
    end 

    game.update_board
    game.win_update
  end

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
      
      $b.display_board
      until  $b.update_board($d,'o')  
        $b.update_board($d,'o')  
        $b.win_update
       $d = m.player_move
      end
      $b.display_board
      
    end
    c += 1
    end