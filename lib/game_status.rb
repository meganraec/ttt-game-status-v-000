def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = Array.new(9, " ")

WIN_COMBINATIONS = [
  [0, 1, 2], #[0]
  [3, 4, 5], #[1]
  [6, 7, 8], #[2]
  [0, 3, 6], #[3]
  [1, 4, 7], #[4]
  [2, 5, 8], #[5]
  [0, 4, 8], #[6]
  [2, 4, 6]  #[7]
]

=begin
win = WIN_COMBINATIONS[0] ||
      WIN_COMBINATIONS[1] ||
      WIN_COMBINATIONS[2] ||
      WIN_COMBINATIONS[3] ||
      WIN_COMBINATIONS[4] ||
      WIN_COMBINATIONS[5] ||
      WIN_COMBINATIONS[6] ||
      WIN_COMBINATIONS[7] ||
      WIN_COMBINATIONS[8]
=end

def won?(board)
  WIN_COMBINATIONS.each do |win_index|
  win_index.each do |position|

  if board = Array.new(9, " ")
    return false
  elsif board
    return true
  else false
      end
    end
  end
  board
end


=begin
    for each win_combination in WIN_COMBINATIONS
  # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3

  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination # return the win_combination indexes that won.
  else
    false
  end
end


def full?(board)
  if board.all? == "X" || "O"
  return true
elsif board.any? = " " || ""
else false
end

def draw?(board)

=begin
draw_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
draw?(draw_board) #=> true

x_diagonal_won = ["X", "O", "X", "O", "X", "O", "O", "O", "X"]
draw?(x_diagonal_won) #=> false

incomplete_board = ["X", " ", "X", " ", "X", " ", "O", "O", "X"]
draw?(incomplete_board) #=> false

end

def over?
=begin
  draw_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
over?(draw_board) #=> true

won_board = ["X", "O", "X", "O", "X", "X", "O", "O", "X"]
over?(won_board) #=> true

inprogress_board = ["X", " ", "X", " ", "X", " ", "O", "O", " "]
over?(inprogress_board) #=> false

end

def winner
=begin
  x_win_diagonal = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
winner(x_win_diagonal) #=> "X"

o_win_center_column = ["X", "O", " ", " ", "O", " ", " ", "O", "X"]
winner(o_win_center_column) #=> "O"

no_winner_board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
winner(no_winner_board) #=> nil

end
=end
