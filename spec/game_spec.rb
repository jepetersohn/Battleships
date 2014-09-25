require 'game'
require 'player'

describe Game do 
	
		let(:game) {Game.new}
		let(:player1) {Player.new}

	it "should start with player 1" do
		expect(game.player1.class).to eq(Player)
	end

	it "should start with player 2" do
		expect(game.player2.class).to eq(Player)
	end

	
end