require './lib/game'
require './lib/player'

RSpec.describe 'Game methods' do
  let(:player1) { Player.new('Lamia', 'x') }
  let(:player2) { Player.new('Mike', 'o') }
  let(:game) { Game.new(player1, player2) }

  it 'should return an array of x and o' do
    expect(Game.choose_signs.sort).to eql(%w[x o].sort)
  end

  context 'Validate the moves' do
    it 'should check for the numbers between 1 to 9' do
      expect(game.validate_move(3)).to eql(3)
    end

    it 'should return -2 for string inputs' do
      # p game.validate_move('abc')
      expect(game.validate_move('abc')).to eql(-2)
    end

    it 'will check for unique numbers' do
      game.choosed_nums = [5]
      expect(game.validate_move(5)).to eql(-1)
    end
  end

  it 'should return true if input length is grater than 2' do
    expect(Game.validate_name('Lamia')).to be true
  end

  it 'should return array of players' do
    expect(game.getcurrent_player).to eql([player1, player2])
  end

  context 'check winner?_method' do
    it 'a draw' do
      game.choosed_nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      expect(game.winner?).to eql('Draw')
    end

    it 'winner is player 1' do
      game.board.squares = [
        [{ '1': nil }, { '2': 'x' }, { '3': nil }],
        [{ '4': nil }, { '5': 'x' }, { '6': nil }],
        [{ '7': nil }, { '8': 'x' }, { '9': nil }]
      ]

      expect(game.winner?). to eql('Lamia')
    end
  end
end
