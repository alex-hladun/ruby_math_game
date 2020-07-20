class Player 
  attr_accessor :name, :lives, :correct

  def initialize(name)
    @name = name
    @lives = 3
    @correct = 0
  end


  def correct_answer
    self.correct += 1
  end
  
  def wrong_answer
    self.lives -= 1
  end
  
end



