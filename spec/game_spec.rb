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

  it 'white player moves first' do
    position = [0, 0]
    colour = "W"
    expect(subject.place_piece(position, colour)).to eq([["W", "O", "O"], ["O", "O", "O"], ["O", "O", "O"]])
  end
end
