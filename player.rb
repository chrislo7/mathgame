class Player

  attr_reader :name
  attr_accessor :lives

  # Initialize each player to have 3 lives
  def initialize(name)
    @lives = 3
    @name = name
  end
end