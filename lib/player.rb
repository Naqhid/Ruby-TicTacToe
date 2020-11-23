require_relative("./board")
$store = [ ]
class Player

  attr_reader :name, :sign
  
 
  
  end
  def self.store1
    @@store
  end
    def initialize(name, sign)
      @name = name
      @sign = sign
    $store << @name
    end
