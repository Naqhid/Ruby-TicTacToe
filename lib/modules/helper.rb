module Helper
 
  def generate_random_signs
    sign1 = %w[x o].sample
    sign2 = sign1 == 'x' ? 'o' : 'x'
    [sign1, sign2]
  end

  def check_players_order(player1, player2)
    if player1.sign == 'x'
      first_player = player1
      second_player = player2
    else
      first_player = player2
      second_player = player1
    end

    [first_player, second_player]
  end
end
