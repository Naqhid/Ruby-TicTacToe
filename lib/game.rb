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
    def self.update_board(pos,sign)
        sign == 'x'   ?  @true_board[pos] = 0 : @true_board[pos] = 1
      if @@view_board[pos].is_a?(Numeric)
        @@view_board[pos] = sign
        return true
      else
        puts  "invalid move try again!"
        return false
      end
      def win_update
        puts "win_update"
         @@combinations.each  do |e| 
           sum = @true_board[e[0]] + @true_board[e[1]] + @true_board[e[2]]
           if  sum == 0
             
             puts " yes#{Player.store1[0]} won"
             exit 1
           elsif sum == 3
              puts " winner is #{Player.store1[1]} won"
             puts " no"
             exit 1
     
           end
           end
           return false
         
         end

         
         
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