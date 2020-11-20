# Helper Method
require "pry"

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
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
  [2,4,6]
]

def won?(board)
  # WIN_COMBINATIONS.each do |win_combination|
    
  #   win_index_1 = win_combination[0]
  #   win_index_2 = win_combination[1]
  #   win_index_3 = win_combination[2]

  #   position_1 = board[win_index_1]
  #   position_2 = board[win_index_2] 
  #   position_3 = board[win_index_3]
 

  #   if position_1 == "X" && position_2 == "X" && position_3 == "X" #||  position_1 == "O" && position_2 == "O" && position_3 == "O"
  #     #position_1 == position_2 && position_2 == position_3 && position_1 != " "
  #     return win_combination
  #     else
  #         return false
  #   end
  # end
   WIN_COMBINATIONS.detect do |combo|
     board[combo[0]] == board[combo[1]] &&
    board[combo[1]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.each do |position|
    if position.all?  != " "
      true
    else  
        false
    end
  end
end


