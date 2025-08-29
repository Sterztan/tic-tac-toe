require_relative 'lib/game'
loop do
  game = Game.new
  game.welcome
  game.board_display

  loop do
    break if game.round
  end

  puts 'Play again? (y/n)'
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

puts 'Thanks for playing!'
