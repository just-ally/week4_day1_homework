class Game

  def initialize(choice1, choice2)
    @choice1 = choice1
    @choice2 = choice2
  end

  def play()
    if @choice1 == 'rock' && @choice2 == 'scissors'
      return "Player 1 wins by playing Rock!"
    elsif @choice2 == 'rock' && @choice1 == 'scissors'
      return "Player 2 wins by playing Rock!"
    elsif @choice1 == 'paper' && @choice2 == 'scissors'
      return "Player 2 wins by playing Scissors!"
    elsif @choice2 == 'paper' && @choice1 == 'scissors'
      return "Player 1 wins by playing Scissors!"
    elsif @choice1 == 'rock' && @choice2 == 'paper'
      return "Player 2 wins by playing Paper!"
    elsif @choice2 == 'rock' && @choice1 == 'paper'
      return "Player 1 wins by playing Paper!"
    else
      return "It's a draw!"
    end
  end


end
