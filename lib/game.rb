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
  end