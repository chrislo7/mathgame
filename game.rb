class Game
  def initialize(player1, player2)
    @num1 = 0
    @num2 = 0
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def turn
    question
    answer
    scoreboard
    switch
  end

  def winner
    winner = @player1.lives == 0 ? @player2 : @player1
    puts "#{winner.name} wins with #{winner.lives} out of 3 lives. "
    puts "----- GAME OVER ----"
    puts "Play again!"
  end

  private
  # Generates two random numbers that are both between 0 and 20
    def random
      @num1 = rand(1...20)
      @num2 = rand(1...20)
    end

  # Question for player
    def question
      random
      puts "#{@current_player.name}: What is #{@num1} + #{@num2}?"
    end

    def answer
      # Converts answer to an integer
      ans = gets.chomp.to_i
      if ans == (@num1 + @num2)
        puts "Yes, you are right!"
      else
        puts "Are you serious??"
        @current_player.lives -= 1
      end
    end

    #Display scoreboard
    def scoreboard
      puts "----- SCOREBOARD -----"
      puts "Player 1:  #{@player1.lives} / 3 vs. Player 2:  #{@player2.lives} / 3"
    end

    def switch
      @current_player = @current_player == @player1 ? @player2 : @player1
      puts "----- NEW TURN -----"
    end
end
