require_relative './modules/helper'
require_relative './board'

require 'set'

class Game
  extend Helper
  include Helper

  attr_reader :board
  attr_accessor :choosed_nums

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @board = Board.new
    @choosed_nums = Set.new
  end

  def self.choose_signs
    show_progress
    generate_random_signs
  end

  def self.validate_name(name)
    name.length >= 3
  end

  def validate_move(num)
    if @choosed_nums.include?(num)
      -1
    elsif num.to_i < 1 || num.to_i > 9
      -2
    else
      @choosed_nums << num
      num
    end
  end

  def getcurrent_player
    check_players_order(@player1, @player2)
  end

  def winner?
    board_elements = [@board.squares[0], @board.squares[1], @board.squares[2]].flatten

    winner_name = nil

    @board.wining_combinations.each do |arr|
      winner_name = get_winner_name(arr, board_elements, @player1)
      break if winner_name

      winner_name = get_winner_name(arr, board_elements, @player2)
      break if winner_name
    end

    winner_name = 'Draw' if winner_name.nil? && (@choosed_nums.length == 9)
    winner_name
  end

  private

  def get_winner_name(combinations, board, player)
    winner_name = player.name if combinations.all? do |num|
      finded_element_from_board = board.find { |el| el.include? :"#{num}" }
      finded_element_from_board[:"#{num}"] == player.sign
    end
    winner_name
  end
end
