require "./player"

class Game
  attr_accessor :player1, :player2, :turn
  def initialize
    @player1 = Player.new "player1"
    @player2 = Player.new "player2"
    @turn = 0
    @questions = [ {q: "What does 5 plus 3 equal?", answer: 8},
                  {q: "What does 2 plus 6 equal?", answer: 8},
                  {q: "What does 4 plus 6 equal?", answer: 10},
                  {q: "What does 3 plus 4 equal?", answer: 7},
                  {q: "What does 3 plus 4 equal?", answer: 7},
                  {q: "What does 3 plus 4 equal?", answer: 7},
                  {q: "What does 3 plus 4 equal?", answer: 7} ]
  end

  def game
    # @questions.each do |question|
    while @player1.lives > 0 && @player2.lives > 0 do
      question = @questions[rand(@questions.length)]
      if @turn % 2 == 0
        player = @player1
        @turn += 1
      else
        player = @player2
        @turn += 1
      end

      puts "#{player.name}: #{question[:q]}"
      ans = gets.chomp

      puts question[:answer].class
      if question[:answer] == ans.to_i
        puts "#{player.name}: Yes!!! You are correct!"
      else
        puts "#{player.name}: No! Seriously?!?!"
        player.lives -= 1
      end

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