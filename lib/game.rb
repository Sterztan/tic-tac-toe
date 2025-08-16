class Game
  def initialize
    @turn = 0
    @board = [
      ' ', ' ', ' ',
      ' ', ' ', ' ',
      ' ', ' ', ' '
    ]
  end

  attr_accessor :turn, :board

  def welcome
    puts '-------------------------'
    puts ' Welcome to Tic-Tac-Toe!'
    puts '-------------------------'
  end

  def board_display
    puts " #{board[0]} | #{board[1]} | #{board[2]}"
    puts '---+---+---'
    puts " #{board[3]} | #{board[4]} | #{board[5]}"
    puts '---+---+---'
    puts " #{board[6]} | #{board[7]} | #{board[8]}"
  end

  def round
    @turn += 1
    @symbol = @turn.odd? ? 'X' : 'O'
    puts '----------------------------------------------------'
    puts " Player #{@symbol}, enter your move. (square #, e.g. 1) "
    puts '----------------------------------------------------'
    input = gets.chomp
    index = input.to_i - 1
    if board[index] == ' '
      board[index] = @symbol
    else
      puts 'That square is taken. Pick again!'
    end
  end

  def winner
    win = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], # rows
      [0, 3, 6], [1, 4, 7], [2, 5, 8], # columns
      [0, 4, 8], [2, 4, 6] # diagonals
    ]
  end
end

# board
# [0] [1] [2]
# [3] [4] [5]
# [6] [7] [8]
