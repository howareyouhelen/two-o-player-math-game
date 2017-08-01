require './game'
require './player'

game = Game.new

game.player << player1 << player2

until #{@player1.lives} <= 0 || #{@player2.lives} <= 0
    game.gameflow
end

game.game_over