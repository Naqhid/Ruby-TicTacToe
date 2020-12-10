class Board
  attr_accessor :squares
  attr_reader :wining_combinations

  def initialize
    @squares = [
      [{ '1': nil }, { '2': nil }, { '3': nil }],
      [{ '4': nil }, { '5': nil }, { '6': nil }],
      [{ '7': nil }, { '8': nil }, { '9': nil }]
    ]

    @wining_combinations = [
      [1, 2, 3], [4, 5, 6], [7, 8, 9],
      [1, 4, 7], [2, 5, 8], [3, 6, 9],
      [1, 5, 9], [3, 5, 7]
    ]
  end

  def show_board
    output = "+------------------------+\n"

    @squares.each do |arr|
      output += '|'
      arr.each do |el|
        el.each do |key, value|
          output += if value
                      " #{key} - #{value == 'x' ? "\u274C" : "\u2B55"} "
                    else
                      " #{key} - \u{2754} "
                    end
        end
      end
      output += "| \n"
    end

    output += '+------------------------+'
    output
  end

  def update_board(num, sign)
    @squares = @squares.map do |row|
      row.each do |item|
        item.each do |key, _value|
          item[key] = sign if key == :"#{num}"
        end
      end
    end

    show_board
  end
end
