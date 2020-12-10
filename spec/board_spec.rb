require './lib/board'

RSpec.describe 'Board methods' do
  output = "+------------------------+\n"

  9.times do |num|
    output += '|' if (num + 1) == 1 || (num + 1) == 4 || num + 1 == 7
    output += " #{num + 1} - \u{2754} "
    output += "| \n" if (num + 1) % 3 == 0
  end

  output += '+------------------------+'

  # updated board for x

  updated_board_x = "+------------------------+\n"

  9.times do |num|
    updated_board_x += '|' if (num + 1) == 1 || (num + 1) == 4 || num + 1 == 7
    updated_board_x += (num + 1) == 5 ? " #{num + 1} - \u{274C} " : " #{num + 1} - \u{2754} "
    updated_board_x += "| \n" if (num + 1) % 3 == 0
  end

  updated_board_x += '+------------------------+'

  # updated board for o

  updated_board_o = "+------------------------+\n"

  9.times do |num|
    updated_board_o += '|' if (num + 1) == 1 || (num + 1) == 4 || num + 1 == 7
    updated_board_o += (num + 1) == 5 ? " #{num + 1} - \u2B55 " : " #{num + 1} - \u{2754} "
    updated_board_o += "| \n" if (num + 1) % 3 == 0
  end

  updated_board_o += '+------------------------+'

  it 'should print empty board' do
    expect(Board.new.show_board).to eq(output)
  end

  it 'should print x for 5 th position if sign is x' do
    expect(Board.new.update_board(5, 'x')).to eq(updated_board_x)
  end

  it 'should print o for 5 th position if sign is o' do
    expect(Board.new.update_board(5, 'o')).to eq(updated_board_o)
  end
end
