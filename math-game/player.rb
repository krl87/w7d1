class Players
  attr_accessor :lives
  def initialize
    @lives = 3
    @opponent = ''
    @id = ''
  end

  def lose_life ()
    @lives = @lives - 1
  end
end