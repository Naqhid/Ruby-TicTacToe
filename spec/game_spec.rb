require './lib/game.rb'
require './lib/player.rb'

RSpec.describe 'testing the game methods' do
  let(:player1) { Player.new('Grace', 'x') }
  let(:player2) { Player.new('Olamide', 'o') }
  let(:game) { Game.new(player1, player2) }

  it 'it chooses sign for players' do
    arr = Game.choose_signs
    expect(arr.sort).to eq(%w[x o].sort)
  end

  it 'it chooses sign for players' do
    arr = Game.choose_signs
    expect(arr.sort).not_to eq(%w[x k].sort)
  end

  context 'validate the players move' do
    it 'should check the moves between 1 to 9' do
      expect(game.validate_move(6)).not_to eq(9)
    end

    it 'should check the moves between 1 to 9' do
      expect(game.validate_move(6)).to eq(6)
    end

    it 'should check if number is invalid' do
      expect(game.validate_move('p')).to eq(-2)
    end

    it 'should check if number is invalid' do
      expect(game.validate_move('y')).not_to eq(-5)
    end
  end

  it 'validates player name if greater than 3' do
    expect(Game.validate_name('Grace')).to be(true)
  end

  it 'validates player name if greater than 3' do
    expect(Game.validate_name('Grace')).not_to be(false)
  end

  it 'validates player name if not less than 3' do
    expect(Game.validate_name('ab')).to be(false)
  end

  it 'validates player name if not less than 3' do
    expect(Game.validate_name('ab')).not_to be(true)
  end

  it 'get the current player' do
    expect(player1.name).to eq('Grace')
  end

  it 'get the current player' do
    expect(player1.sign).to eq('x')
  end

  it 'get the current player' do
    expect(player1.name).not_to eq('paul')
  end

  it 'get the current player' do
    expect(player1.sign).not_to eq('o')
  end

  # rubocop:disable Metrics/BlockLength: Block has too many lines

  context 'Check Winner' do
    it 'Horizontal' do
      game.board.update_board(1, 'x')
      game.board.update_board(2, 'x')
      game.board.update_board(3, 'x')
      expect(game.winner?).to eq('Grace')
    end

    it 'Horizontal' do
      game.board.update_board(1, 'o')
      game.board.update_board(2, 'x')
      game.board.update_board(3, 'o')
      expect(game.winner?).not_to eq('paul')
    end

    it 'Vertical' do
      game.board.update_board(1, 'o')
      game.board.update_board(4, 'o')
      game.board.update_board(7, 'o')
      expect(game.winner?).to eq('Olamide')
    end

    it 'Vertical' do
      game.board.update_board(1, 'x')
      game.board.update_board(4, 'o')
      game.board.update_board(7, 'x')
      expect(game.winner?).not_to eq('mide')
    end

    it 'Diagonal' do
      game.board.update_board(1, 'o')
      game.board.update_board(5, 'o')
      game.board.update_board(9, 'o')
      expect(game.winner?).to eq('Olamide')
    end

    it 'Diagonal' do
      game.board.update_board(1, 'x')
      game.board.update_board(5, 'o')
      game.board.update_board(9, 'o')
      expect(game.winner?).not_to eq('lamide')
    end
  end
end
# rubocop:enable Metrics/BlockLength: Block has too many lines
