class Game

attr_reader :board, :player1, :player2

  def initialize
    @board = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]
    @player1 = "W"
    @player2 = "B"
  end


  def place_piece(position, colour)
    position1 = position[0]
    position2 = position[1]
    @board[position1][position2] = colour
    @board
  end
end
