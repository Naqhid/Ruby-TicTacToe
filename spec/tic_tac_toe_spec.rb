require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/board'
require_relative '../lib/modules/helper'

describe Player do
  describe '#initialize' do
    subject { Player.new('Alex', 'X') }

    it 'return player object' do
      expect(subject).to be_an(Player)
    end
  end
end
