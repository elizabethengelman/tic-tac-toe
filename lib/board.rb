class Board
  SPACE = " "
	attr_accessor :board
	attr_reader :possible_wins
  
	def initialize
		@board = {1 => SPACE, 2 => SPACE, 3 => SPACE, 4 => SPACE, 5 => SPACE, 6 => SPACE, 7 => SPACE, 8 => SPACE, 9 => SPACE} 
		@possible_wins = [ [1, 2, 3], 
                       [4, 5, 6], 
                       [7, 8, 9], 
                       [1, 4, 7],
                       [2, 5, 8],
                       [3, 6, 9],
                       [1, 5, 9],
                       [3, 5, 7] 
                     ] 
  end	

  def print_board
    [
      "#{@board[1]} | #{@board[2]} | #{@board[3]}",
      "_________",
      "#{@board[4]} | #{@board[5]} | #{@board[6]}",
      "_________",
      "#{@board[7]} | #{@board[8]} | #{@board[9]}"
  	]
  end

  def print_example_board
    [
      "1 | 2 | 3",
      "_________",
      "4 | 5 | 6",
      "_________",
      "7 | 8 | 9",
      "",
      "---------------",
      ""
    ]
  end

  def update_board(position, mark)
    @board[position] = mark
  end

end