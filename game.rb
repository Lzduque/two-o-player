require "./player"

class Game
  attr_accessor :player1, :player2, :turn, :first_num, :second_num, :result
  def initialize
    @player1 = Player.new "player1"
    @player2 = Player.new "player2"
    @turn = 0
    @first_num
    @second_num
    @result
  end

  def game
    while @player1.lives > 0 && @player2.lives > 0 do
      # turn evaluation
      if @turn % 2 == 0
        player = @player1
        @turn += 1
      else
        player = @player2
        @turn += 1
      end

      # questions
      @first_num = rand(1...20)
      @second_num = rand(1...20)
      @result = @first_num + @second_num
      puts "#{player.name}: What does #{@first_num} plus #{@second_num} equal?"
      ans = gets.chomp

      # answer evaluation
      if @result.to_i == ans.to_i
        puts "#{player.name}: Yes!!! You are correct!"
      else
        puts "#{player.name}: No! Seriously?!?!"
        player.lives -= 1
      end

      # final messages
      if @player1.lives == 0
        puts "#{@player1.name} wins with a score of #{@player1.lives}/3!"
        puts "----- GAME OVER -----"
      elsif @player2.lives == 0
        puts "#{@player2.name} wins with a score of #{@player2.lives}/3!"
        puts "----- GAME OVER -----"
      else
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
        puts "----- NEW TURN -----"
      end
    end
  end
end