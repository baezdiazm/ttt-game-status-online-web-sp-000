# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [0,4,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [3,4,5],
  [6,7,8]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    if (board[combo[0]] == "X" && board[combo[1]] == "X" && board[combo[2]] == "X" || board[combo[0]] == "O" && board[combo[1]] == "O" && board[combo[2]] == "O")
      return combo
    end
  end
false
end

def full?(board)
  if board.any? {|space| space == " " || space == ""}
    false
  else
    true
  end
end

def draw?(board)
<<<<<<< HEAD
  !won?(board) && full?(board)
=======
  !won?(board) || full?(board)
>>>>>>> fb21a2808478f3a23b2a53ccc29bb470bd2dde97
end

def over?(board)
  won?(board) || draw?(board)

end
<<<<<<< HEAD

def winner(board)
  if won?(board)
    board[won?(board)[0]]
  end
end
=======
>>>>>>> fb21a2808478f3a23b2a53ccc29bb470bd2dde97
