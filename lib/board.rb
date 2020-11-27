
require_relative("../lib/player")
class Board
    def initialize
        @view_board = ['1', '2', '3', '4', '5', '6', '7', '8', '9'] 
        @true_board = [0, 0, 0, 0, 0, 0, 0, 0, 0] 
        @last_move = 0
        @last_player = 'O' 
        @game_over = false
      end
    
      def display_board 
        puts @view_board[0] + '|' + @view_board[1] + '|' + @view_board[2]
        puts '-----'
        puts @view_board[3] + '|' + @view_board[4] + '|' + @view_board[5]
        puts '-----'
        puts @view_board[6] + '|' + @view_board[7] + '|' + @view_board[8]
      end
    