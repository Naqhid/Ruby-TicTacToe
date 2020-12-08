require './lib/board.rb'

RSpec.describe 'testing the board' do
  it 'should show us an empty board' do
    expect(Board.new.show_board).to eq("+------------------------+\n| 1 - ❔  2 - ❔  3 - ❔ | \n| 4 - ❔  5 - ❔  6 - ❔ | \n| 7 - ❔  8 - ❔  9 - ❔ | \n+------------------------+")
  end

  it 'should show us an empty board' do
    expect(Board.new.show_board).not_to eq("+------------------------+\n| 1 - p  2 - ❔  3 - ❔ | \n| 4 - ❔  5 - ❔  6 - ❔ | \n| 7 - ❔  8 - ❔  9 - ❔ | \n+------------------------+")
  end

  context 'update board methods' do
    it 'should return a board with an input in 5th position' do
      expect(Board.new.update_board(5, 'x')).not_to eq("+------------------------+\n| 1 - ❔  2 - x  3 - ❔ | \n| 4 - ❔  5 - ❌  6 - ❔ | \n| 7 - ❔  8 - ❔  9 - ❔ | \n+------------------------+")
    end

    it 'should return a board with an input in 5th position' do
      expect(Board.new.update_board(5, 'x')).to eq("+------------------------+\n| 1 - ❔  2 - ❔  3 - ❔ | \n| 4 - ❔  5 - ❌  6 - ❔ | \n| 7 - ❔  8 - ❔  9 - ❔ | \n+------------------------+")
    end

    it 'should return a board with an "o" in 5h position if 9th position is x' do
      board = Board.new
      board.update_board(9, 'x')
      expect(board.update_board(5, 'o')).to eq("+------------------------+\n| 1 - ❔  2 - ❔  3 - ❔ | \n| 4 - ❔  5 - ⭕  6 - ❔ | \n| 7 - ❔  8 - ❔  9 - ❌ | \n+------------------------+")
    end

    it 'should return a board with an "o" in 5h position if 9th position is x' do
      board = Board.new
      board.update_board(9, 'x')
      expect(board.update_board(5, 'o')).not_to eq("+------------------------+\n| 1 - ❔  2 - ❔  3 - ❔ | \n| 4 - ❔  5 - X  6 - ❔ | \n| 7 - ❔  8 - ❔  9 - ❌ | \n+------------------------+")
    end
  end
end
