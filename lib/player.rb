require_relative("./board")
require_relative("./player")
class  Game 
    def play #runs the game
        puts "Let's play tic-tac-toe!"
        display_board
    
        until @game_over == true
          @last_player == 'O' ? moveX : moveO
          display_board
          score
          check
        end
      end
    end
    
    fun = Game.new
    fun.play
    
  end