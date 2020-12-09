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
end
