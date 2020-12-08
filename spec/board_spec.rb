require './lib/board.rb'

RSpec.describe 'testing the board' do
  let(:board) {Board.new}
  it 'should show us an empty board' do
    expect(board.squares).to eq([{ '1': nil }, { '2': nil }, { '3': nil }],[{ '4': nil }, { '5': nil }, { '6': nil }],[{ '7': nil }, { '8': nil }, { '9': nil }])
  end

  it 'should show us an empty board' do
    expect(board.squares).not_to eq([{ '1': nil }, { '2': nil }, { '3': nil }],[{ '4': nil }, { '5': nil }, { '6': nil }],[{ '7': nil }, { '8': nil }, { '9': nil }])
  end

  context 'update board methods' do
    it 'should return a board with an input in 5th position' do
      expect(board.update_board(5, 'x')).not_to eq([{ '1': nil }, { '2': nil }, { '3': nil }],[{ '4': nil }, { '5': ❌ }, { '6': nil }],[{ '7': nil }, { '8': nil }, { '9': nil }])
    end

    it 'should return a board with an input in 5th position' do
      expect(board.update_board(5, 'x')).to eq([{ '1': nil }, { '2': nil }, { '3': nil }],[{ '4': nil }, { '5': ❌ }, { '6': nil }],[{ '7': nil }, { '8': nil }, { '9': nil }])
    end

    it 'should return a board with an "o" in 5h position if 9th position is x' do
      
      board.update_board(9, 'x')
      expect(board.update_board(5, 'o')).to eq([{ '1': nil }, { '2': nil }, { '3': nil }],[{ '4': nil }, { '5': ⭕ }, { '6': nil }],[{ '7': nil }, { '8': nil }, { '9': ❌ }])
    end

    it 'should return a board with an "o" in 5h position if 9th position is x' do
    
      board.update_board(9, 'x')
      expect(board.update_board(5, 'o')).not_to eq([{ '1': nil }, { '2': nil }, { '3': nil }],[{ '4': nil }, { '5': nil }, { '6': nil }],[{ '7': nil }, { '8': nil }, { '9': ❌ }])
    end
  end
end
