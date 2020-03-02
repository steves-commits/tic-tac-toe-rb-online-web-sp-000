def WIN_COMBINATIONS = [
  [0,1,2], # top row 
  [3,4,5] # middle row
  [6,7,8] # bottom row 
  [0,3,6] # first column 
  [1,4,7] # middle column
  [2,5,8] # last column
  [0,4,8] # diagonal1 
  [2,4,6] # diagonal2 
  ]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1 
end

def move(board, index, current_player)
  board[index] = current_player
end

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken(board, index)
end

def turn(board)
  puts "Please choose a number 1-9"
  user_input = gets.chomp 
  index = input_to_index(user_input)
  if valid_move?(board, index)
    player_token = current_payer(board)
    move(board, index, player_token)
    display_board(board)
  else
    turn(board)
  end
end






