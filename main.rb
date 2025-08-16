require_relative 'lib/game'

play = Game.new
play.welcome
play.board_display

while true
  play.round
  play.board_display
end
