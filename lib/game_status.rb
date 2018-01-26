def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

board = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if ((board[win_combination[0]] == "X" || board[win_combination[0]] == "O") &&
        (board[win_combination[0]] == board[win_combination[1]]) &&
        (board[win_combination[1]] == board[win_combination[2]]) &&
        (board[win_combination[2]] == board[win_combination[0]]))
        return win_combination
        return true
    end
  end
  return false
end

def full?(board)
  if board.any? == " " || board.any? == ""
  return false
  elsif board.all? == "X" || "O"
  return true
else false
end
end

#def draw?(board)

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
