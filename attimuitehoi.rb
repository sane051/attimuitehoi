def janken
  puts "最初はグー、じゃんけん..."
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"

  player_hand = gets.to_i

  program_hand = rand(3)

  if player_hand > 3
	puts "入力された値が無効です"
	janken
  end
  jankens=["グー","チョキ","パー"]

  puts "あなたの手:#{jankens[player_hand]}, プログラムの手:#{jankens[program_hand]}"
  

  
  if player_hand == program_hand
	puts "あいこ"
	janken
  elsif (player_hand == 0 && program_hand ==1) ||(player_hand == 1 && program_hand ==2) || (player_hand == 2 && program_hand ==0)
	puts "あっち向いてホイの指差す方向を指示してください"
	$win = "win"
	attimuitehoi
  else
	puts "あっち向いてホイで顔を向ける方向を決めてください"
	 $win = "lose"
  attimuitehoi
  end
end

def attimuitehoi
  puts "あっち向いて..."
  puts "[0]:↑\n[1]:→\n[2]:↓\n[3]:←"

  player_direction = gets.to_i	
  program_direction = rand(4)

  attimuites=["↑","⇨","↓","←"]

  puts "あなたの手:#{attimuites[player_direction]}, プログラムの手:#{attimuites[program_direction]}"

 if (player_direction == program_direction) && ($win == "win")
    puts "あなたの勝ちです"
    elsif (player_direction == program_direction) && ($win == "lose")
    puts "あなたの負けです"
    else 
    janken
    end
end
janken
