require './player.rb'
require './game.rb'

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")
game = Game.new(player_1, player_2)

# Game ends when a player's lives are at 0
until player_1.lives < 1 || player_2.lives < 1
  game.turn
end

# Display winner
game.winner