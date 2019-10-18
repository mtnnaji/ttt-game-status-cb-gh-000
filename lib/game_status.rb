# Helper Method
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
top_row_win = [0,1,2]
middle_row_win = [3,4,5]
bottom_row_win =[6,7,8]
left_column_win =[0,3,6]
middle_column_win =[1,4,7]
right_column_win=[2,5,8]
left_diagonal_win =[0,4,8]
right_diagonal_win = [2,4,6]
WIN_COMBINATIONS = [top_row_win,middle_row_win,bottom_row_win,left_column_win,middle_column_win,right_column_win,left_diagonal_win,right_diagonal_win]
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)

WIN_COMBINATIONS.each do |combination|
  for winning_combination in combination do



    win_index_1 = winning_combination[0]
    win_index_2 = winning_combination[1]
    win_index_3 = winning_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3


    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return winning_combination # return the win_combination indexes that won.
    end
  end  
  end
end
