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
  end