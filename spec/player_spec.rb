require 'player'

describe Player do
  subject(:dave) { described_class.new("Dave") }
  subject(:mittens) { described_class.new("Mittens") }

  describe "#name" do
    it "should return the player's name" do
      expect(dave.name).to eq "Dave"
    end
  end

  describe "#hit_points" do
    it "returns the player's hit points" do
      expect(dave.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe "#receive_damage" do
    it "reduces a player's HP" do
      expect { dave.receive_damage }.to change { dave.hit_points }.by(-10)
    end
  end
end
