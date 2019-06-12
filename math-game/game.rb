require ('./player')
require ('./question')

class Game
  attr_reader :current_player

  def initialize
    @player1 = Players.new
    @player2 = Players.new
    @player1.id = 'Player 1'
    @player2.id = 'Player 2'
    @player1.opponent = @player2
    @player2.opponent = @player1
    @current_player = @player1
  end

  def start_game
    while current_player.lives > 0 do
      game_question = Question.new
      game_question.generate_number
      game_question.ask_question
      if game_question.get_answer == true
        @current_player = @current_player.opponent
        puts "Correct! No lives lost."
      else
        current_player.lose_life
        puts "Incorrect! -1 life."
        if current_player.lives == 0
          break
        end
        @current_player = @current_player.opponent
      end
    end
    puts "#{current_player.id} has lost all their lives. Congratulations #{current_player.opponent.id}, you won!!"
  end
end

