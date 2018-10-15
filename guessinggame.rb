class GuessingGame

  @@answer = rand(100).to_i
  

  def answer
    return @@answer
  end


  def guess(input) 
    puts answer
    if input < answer
      puts "Too Low!"
    elsif input > answer
      puts "Too high!"
    else
      puts "Correct!"
    end
  end

  def reset_answer
    @answer = rand(100).to_i
  end

end

game = GuessingGame.new

game.guess(69)
game


