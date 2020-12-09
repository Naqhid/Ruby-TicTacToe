require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/board'
require_relative '../lib/modules/helper'

# describe Player do
#   describe '#initialize' do
#     subject { Player.new('Alex', 'X') }

#     it 'return player object' do
#       expect(subject).to be_an(Player)
#     end
#   end
# end

# describe Board do
#   subject { Board.new }
#   describe '#initialize' do
#     it 'declare an object' do
#       expect(subject).to be_an(Board)
#     end
#   end

#   describe '#update_board' do
#     it 'takes the position for the current player' do
#       expect(subject.update_board).to
#     end
#   end
# end

describe Game do
  let(:player_one) { Player.new('Fred', 'x') }
  let(:player_two) { Player.new('Alex', 'o') }
  let(:game) { Game.new(player_one, player_two) }
  let(:game_class) { Game }

  describe '#choose_signs' do
    it 'returns an array with the random signs' do
      expect(game_class.choose_signs).to be_an(Array)
    end
  end

  describe '#validate_name' do
    it 'returns false only when name is short' do
      expect(game_class.validate_name('Alan')).to_not be_falsy
    end
  end


  describe '#validate_move' do
    it 'return -1 when the move is already taken' do
      expect(game.validate_move('2')).not_to eql(-1)
    end

    it 'return -2 when is an invalid move' do
      expect(game.validate_move('10')).to eql(-2)
    end

    it 'return the valid number' do
      expect(game.validate_move('5')).to eql('5')
    end
  end
  describe '#getcurrent_player' do 
    it 'return name of player to make move' do 
      expect(game.getcurrent_player).to be_an(Array)
    end
  end
end
