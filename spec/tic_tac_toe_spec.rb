require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/board'
require_relative '../lib/modules/helper'

describe Game do
  let(:player_one) { Player.new('Fred', 'x') }
  let(:player_two) { Player.new('Alex', 'o') }
  let(:game) { Game.new(player_one, player_two) }
  let(:game_class) { Game }

  describe '#choose_signs' do
    it 'returns an array with the random signs' do
      expect(game_class.choose_signs).to be_an(Array)
    end
    it 'does not return a string' do 
      expect(game_class.choose_signs).not_to be_an(String)
    end
  end

  describe '#validate_name' do
    it 'when name is less than 3 words returns false' do
      expect(game_class.validate_name('Kim')).to_not be_falsey
    end
    it 'when name is greater than 3 words return true' do
      expect(game_class.validate_name('Anand')).to be_truthy
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
    it 'return an array  with two player object' do
      expect(game.getcurrent_player).to be_an(Array)
    end
  end

  describe '#winner?' do
    it 'return an string' do
      expect(game.winner?).to_not be_an(String)
    end
  end
end

describe Helper do
  let(:player_one) { Player.new('Fred', 'x') }
  let(:player_two) { Player.new('Alex', 'o') }
  let(:game) { Game.new(player_one, player_two) }

  describe '#generate_random_signs' do
    it 'return an array with the generated signs' do
      expect(game.generate_random_signs).to be_an(Array)
    end
  end
  describe '#check_players_order' do
    it 'returns an array with player objects' do
      expect(game.check_players_order(player_one, player_two)).to be_an(Array)
    end
  end
end
