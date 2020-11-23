require_relative("../lib/player")
class Board
  @@view_board = [0,1,2,3,4,5,6,7,8] 
  @@combinations = [ [0,1,2], [3,0,6],[3,4,5],[6,7,8],[1,4,7],[2,5,8],[0,4,8],[6,4,2] ]
   
                  
      
         def initialize
        
             @true_board = [10, 10, 10, 10, 10, 10, 10, 10, 10] 
           
         end
        end  