class TicTacToe
  WIN_COMBINATIONS = [
  [0,1,2],#top row
  [3,4,5],#middle row
  [6,7,8],#bottom row
  [0,3,6],#left column
  [1,4,7],#middle column
  [2,5,8],#right column
  [0,4,8],#left diagonal
  [6,4,2]#right diagonal
  ]
def initialize(board = nil)
    @board = Array.new(9, " ")
end
def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(index, current_player = "X")
  @board[index] = current_player
  end
def position_taken?(index)
  !(@board[index].nil? || @board[index] == " ")
  end
def valid_move?(index)
  if index.between?(0,8) && !position_taken(index)
  return true
else
  nil
  end
end
