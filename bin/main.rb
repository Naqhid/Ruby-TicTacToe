#!/usr/bin/env ruby

require 'set'

puts 'Welcome to Tic Tac Toe game'
puts
puts
# create validate method to check if valid name is typed

@board = [
  [{ '1': nil }, { '2': nil }, { '3': nil }],
  [{ '4': nil }, { '5': nil }, { '6': nil }],
  [{ '7': nil }, { '8': nil }, { '9': nil }]
]

@choosed_nums = Set.new

def show_board
  puts '+---------------------------+'

  @board.each do |arr|
    print '|'
    arr.each do |el|
      el.each do |key, value|
        if value
          print " #{key} - #{value == 'x' ? "\u{274C}" : "\u2B55"}  "
        else
          print " #{key} - \u{1F4A9}  "
        end
      end
    end
    print '|'
    puts
  end

  puts '+---------------------------+'
end

# ----------------  Validation part ------------------

def validate_name(name)
  while name.length < 3
    p 'name is too short,try again'
    name = gets.chomp
  end
  name
end

def validate_move(num)
  while num.to_i < 1 || num.to_i > 9
    p 'not a valid number, please choose a number between 1 to 9'
    num = gets.chomp
  end

  while @choosed_nums.include? num
    p "#{num} is already taken, please choose another number"
    num = gets.chomp
  end

  @choosed_nums << num
  p @choosed_nums
  num
end

# starting from here

puts 'Player 1 type your name'

@player_1_name = validate_name(gets.chomp)
puts

puts 'Player 2 type your name'

@player_2_name = validate_name(gets.chomp)
puts

puts 'Computer will randomly choose sign for players, please wait ... '

def show_progress
  101.times do |i|
    print("\rPercentage: ", "#{i}%")
    sleep(0.03)
  end
end

show_progress
puts
puts
puts

# make module for methods and move generate_random_signs there

def generate_random_signs
  sign1 = %w[x o].sample
  sign2 = sign1 == 'x' ? 'o' : 'x'
  [sign1, sign2]
end

# signs = generate_random_signs
@player_1_sign, @player_2_sign = generate_random_signs

# create Player class after that initialize two objects and assign them names and signs
@player1 = {
  player_name: @player_1_name,
  player_sign: @player_1_sign
}

@player2 = {
  player_name: @player_2_name,
  player_sign: @player_2_sign
}

puts "#{@player1[:player_name]}(#{@player1[:player_sign]}) -- vs -- #{@player2[:player_name]}(#{@player2[:player_sign]})"
puts
sleep 1

# board
show_board

@wining_combinations = [
  [1, 2, 3], [4, 5, 6], [7, 8, 9],
  [1, 4, 7], [2, 5, 8], [3, 6, 9],
  [1, 5, 9], [3, 5, 7]
]

# getting number and sign to update the board
def update_board(num, sign)
  @board = @board.map do |row|
    row.each do |item|
      item.each do |key, _value|
        item[key] = sign if key == :"#{num}"
      end
    end
  end

  puts
  puts
  show_board
  puts
  puts
end

def make_move(cur_player)
  puts "#{cur_player[:player_name]} it's your turn, please choose a number between 1 to 9"
  num = validate_move(gets.chomp)
  update_board(num, cur_player[:player_sign])
end

def get_winner_name(combinations, board, player)
  winner_name = player[:player_name] if combinations.all? do |num|
    finded_element_from_board = board.find { |el| el.include? :"#{num}" }
    finded_element_from_board[:"#{num}"] == player[:player_sign]
  end
  winner_name
end

def winner?
  board_elements = [@board[0], @board[1], @board[2]].flatten

  winner_name = nil

  @wining_combinations.each do |arr|
    winner_name = get_winner_name(arr, board_elements, @player1)

    break if winner_name

    winner_name = get_winner_name(arr, board_elements, @player2)

    break if winner_name
  end

  winner_name = 'Draw' if winner_name.nil? && (@choosed_nums.length == 9)

  winner_name
end

def check_players_order
  if @player1[:player_sign] == 'x'
    first_player = @player1
    second_player = @player2
  else
    first_player = @player2
    second_player = @player1
  end

  [first_player, second_player]
end

@toggler = 0

until winner?

  current_player = check_players_order[@toggler]
  make_move(current_player)
  @toggler = @toggler.zero? ? 1 : 0

end

puts "#{winner?} is winner !!!"
