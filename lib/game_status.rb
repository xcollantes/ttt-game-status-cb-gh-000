# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  if draw?(board)
    return false
  elsif board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    return false
  elsif
    WIN_COMBINATIONS.each do |win_combo|
      if (board [win_combo[0]] == board [win_combo[1]]) && (board [win_combo[1]] == board [win_combo[2]])
        return win_combo
      end
    end
  else
    return nil
  end
end

def full?(board)
  full = true
  board.each do |i|
    if (i == ' ' || i == '') then full = false end
  end
  return full
end

def draw?(board)
  if 
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner?(board)
  if won?(board)
    keys = won?(board)
    return board[won?[0]]
  else
    return nil
  end
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2],
]
b = ["X", "X", "O", "X", "O", "X", "O", "X", "X"]
#print won?(b)
#print full?(b)
