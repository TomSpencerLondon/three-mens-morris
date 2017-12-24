require 'game'

describe Game do

  it 'has an empty board on initialization' do
    expect(subject.board).to eq([["O", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]])
  end

  it 'has a white player' do
    expect(subject.player1).to eq("W")
  end

  it 'has a black player' do
    expect(subject.player2).to eq("B")
  end

  it 'places a piece on the board' do
    subject.place_piece([0, 0], "W")
    expect(subject.board).to eq([["W", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]])
  end

  it 'white player goes first' do
    expect{subject.place_piece([0, 0], "B")}.to raise_error("White player has first move")

  end

end
