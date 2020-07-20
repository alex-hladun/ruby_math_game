# Create a 2-Player math game where players take turns to answer simple math addition problems. 
# A new math question is generated for each turn by picking two numbers between 1 and 20. 
# The player whose turn it is is prompted the question and must answer correctly or lose a life.

class Engine
  attr_accessor :p1, :p2

  def initialize(p1, p2)
    @winner = false
    @p1 = p1
    @p2 = p2

    start = rand()
    if (start > 0.5)
      @current_player = p1
    else
      @current_player = p2
    end

    puts "Random - Starting player is #{@current_player.name}"
  end

  def start_game
    while(!@winner)
      generate_question
      ans = gets.chomp.to_i
      @correct_ans = @question_var_a + @question_var_b
      if (ans == @correct_ans)
        puts "Correct!"
        @current_player.correct_answer
      else 
        puts "WRONG!"
        @current_player.wrong_answer
      end
      check_lives
     
    end
  end

  def check_lives
    if (@current_player.lives <= 0)
      swap_curr_player
      @winner = @current_player
      puts "#{@winner.name} wins with a score of #{@winner.lives}/3"
      puts '----- GAME OVER -----'
      puts 'Good Bye!'
    else 
      puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3"
      puts "----- NEW TURN -----"
      swap_curr_player
    end
  end

  def generate_question
    @question_var_a = rand(1..21)
    @question_var_b = rand(1..21)
    puts "#{@current_player.name}: What does #{@question_var_a} plus #{@question_var_b} equal?"
  end

  def swap_curr_player
    if (@current_player == @p1)
      @current_player = @p2
    else 
      @current_player = @p1 
    end
  end




    

end
