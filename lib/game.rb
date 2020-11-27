require_relative("./board")
require_relative("./player")
class  Game 
    def moveX 
        puts 'Player X: Which square would you like?'
        @last_move = gets.chomp
        error
        @true_board[@last_move.to_i - 1] = 1
        @view_board[@last_move.to_i - 1] = 'X'
        @last_player = 'X'
      end
    
      def moveO 
        puts 'Player O: Which square would you like?'
        @last_move = gets.chomp
        error
        @true_board[@last_move.to_i - 1] = -1
        @view_board[@last_move.to_i - 1] = 'O'
        @last_player = 'O'
      end
    
      def error 
        if @true_board[@last_move.to_i - 1] != 0
          puts 'Sorry, please pick another box:'
          display_board
          @last_move = gets.chomp
        end
      end
    
    