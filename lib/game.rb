class Game

attr_reader :board, :player1, :player2

  def initialize
    @board = [["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]]
    @player1 = "W"
    @player2 = "B"
    @turn = @player1
    @move = 0
  end


  def place_piece(position, colour)
    p @move
    p @turn
    raise "White player has first move" if @move == 0 && colour == @player2
    position1 = position[0]
    position2 = position[1]
    @board[position1][position2] = colour
    switch_player
    @move += 1
  end

  private

  def switch_player
    if @turn == @player1
      @turn = @player2
    else
      @turn = @player1
    end
  end
end
