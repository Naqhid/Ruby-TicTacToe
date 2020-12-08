# !/usr/bin/env ruby
require_relative '../lib/player'
require_relative '../lib/game'

puts "Welcome to Tic Tac Toe game \n\n "

puts "Player1 type your name \n"

player_1_name = gets.chomp.strip.capitalize

until Game.validate_name(player_1_name)
  puts 'Name is too short,try again'
  player_1_name = gets.chomp.strip.capitalize
end

puts "Player2 type your name \n "
player_2_name = gets.chomp.strip.capitalize

until Game.validate_name(player_2_name)
  puts 'Name is too short,try again'
  player_2_name = gets.chomp.strip.capitalize
end

puts 'Computer will randomly choose sign for players, please wait'
signs = Game.choose_signs
player_1_sign, player_2_sign = signs

player1 = Player.new(player_1_name, player_1_sign)
player2 = Player.new(player_2_name, player_2_sign)

puts "#{player1.name}(#{player1.sign}) -- vs -- #{player2.name}(#{player2.sign}) \n"
sleep 2

@toggler = 0

tic_tac_toe = Game.new(player1, player2)

puts tic_tac_toe.board.show_board

until tic_tac_toe.winner?
  current_player = tic_tac_toe.getcurrent_player[@toggler]

  puts "#{current_player.name} it's your turn, please choose a number between 1 to 9"

  num = gets.chomp.strip
  res = tic_tac_toe.validate_move(num)

  until res.to_i.positive?

    case res
    when -1
      puts "#{num} is already taken, please choose another number"
    when -2
      puts 'not a valid number, please choose a number between 1 to 9'
    end

    num = gets.chomp.strip
    res = tic_tac_toe.validate_move(num)
  end

  puts "\n\n"
  puts tic_tac_toe.board.update_board(num, current_player.sign)
  puts "\n\n"

  @toggler = @toggler.zero? ? 1 : 0
end

winner = tic_tac_toe.winner?
puts winner == 'Draw' ? 'Draw. try again' : "#{winner} is winner !!!"
