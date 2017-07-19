require 'attack'

describe Attack do
  let(:player) { double(:player) }
  subject(:attack) { described_class }

  describe "#.run" do
    it "damages the player" do
      expect(player).to receive(:receive_damage)
      attack.run(player)
    end
  end
end
