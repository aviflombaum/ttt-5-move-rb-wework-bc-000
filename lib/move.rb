def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i-1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Where would you like to go 1-9?"
  input = gets.strip

  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, "O")
  end
  display_board(board)
end
# code your #valid_move? method here
def valid_move?(board, index)
  # is index valid
  # if index.between?(0, 8) 
  #   if position_taken?(board, index)
  #     false
  #   else
  #     true
  # end
  
  index.between?(0,8) && !position_taken?(board,index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  board[index] != " "
end