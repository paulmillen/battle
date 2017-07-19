require 'game'

describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  subject(:game) { described_class.new(player1, player2) }


  describe "#player_1" do
    it "returns the first player" do
      expect(game.player_1).to eq player1
    end
  end

  describe "#player_2" do
    it "returns the second player" do
      expect(game.player_2).to eq player2
    end
  end

  describe "#attack" do
    it "attacks the other player" do
      expect(player2).to receive(:receive_damage)
      game.attack
    end
  end

  describe "#current_turn" do
    it "starts as player 1" do
      expect(game.current_turn).to eq player1
    end
  end

  describe "#switch_turns" do
    it "switches the turns" do
      game.switch_turns
      expect(game.current_turn).to eq player2
    end
  end

  describe "#loser" do
    it "returns the loser" do
      allow(player1).to receive(:hit_points) { 60 }
      allow(player2).to receive(:hit_points) { 0 }
      expect(game.loser).to eq player2
    end
  end

  describe '#game_over?' do
    it "makes the game over" do
      allow(player1).to receive(:hit_points) { 60 }
      allow(player2).to receive(:hit_points) { 0 }
      expect(game).to be_game_over
    end
  end
  
end
