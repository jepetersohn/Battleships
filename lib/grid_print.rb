require 'terminal-table/import'

module GridPrint
  
  def print_boards
    letters = ("A".."J").to_a.unshift(" ")
    #board duped in order not to modify original grid
    temp_board = board.grid.dup
      (0..9).each do |n|
        temp_board[n].unshift(n+1)
      end
    puts table(letters, *temp_board)
  end
end



  