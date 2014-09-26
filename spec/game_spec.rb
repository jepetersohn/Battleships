require 'game'
require 'player'
require 'ship'
require 'board'

describe Game do 
	
		let(:game) {Game.new}
		let(:player1) {double :player1, Class: Player}
		let(:battleship) {double :battleship, name: :battleship}

	it "should start with player 1" do
		expect(game.player1.class).to eq(Player)
	end

	it "should start with player 2" do
		expect(game.player2.class).to eq(Player)
	end

	context "at beginning of game" do

		it "should ask player to place battleship" do
		allow(battleship).to receive(:name).with ("battleship")
		expect(game.ask_player_place_ship(game.player1, battleship)).to eq("player1, where do you want to place your battleship (e.g. 'A1') ")
		end	

		# it "should send ship coordinates to be board" do
		# 	expect(game.send_ship_coordinates).
		# end

	end

	
end