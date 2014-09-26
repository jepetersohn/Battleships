require 'game'
require 'player'
require 'ship'
require 'board'

describe Game do 
	
		let(:game) {Game.new}
		let(:player1) {double :player1, Class: Player, board: true, place_ship: true}
		let(:battleship) {double :battleship, name: :battleship}
		let(:STDIN) {double :STDIN}
 
	context "Upon initialize" do	

		it "should start with player 1" do
			expect(game.player1.class).to eq(Player)
		end

		it "should start with player 2" do
			expect(game.player2.class).to eq(Player)
		end
	end

	context "at beginning of game" do

		it "should ask player to place battleship" do
			expect(game.ask_player_place_ship(game.player1, battleship)).to eq("player1, where do you want to place your battleship (e.g. 'A1')")
		end	

		it "should ask player for direction" do
			expect(game.ask_player_ship_direction(game.player1, battleship)).to eq("player1, what direction do you want to place your battleship ('R' or 'D')")
		end

		it "should receive user input for coordinate" do
			allow(STDIN).to receive(:gets).and_return('A1')
			expect(game.coordinates).to eq("A1")
		end

		it "should receive user input for direction" do
			allow(STDIN).to receive(:gets).and_return('R')
			expect(game.direction).to eq("R")
		end

		it "should pass ship coordinates to board" do
			allow(player1.board).to receive(:place_ship)
			expect(player1.board).to receive(:place_ship).with(battleship, "A1", "R")
			game.pass_coordinates(player1, battleship, "A1", "R")
		end
	end

	context "during the game" do

		it "should ask player to give shooting coordinate" do
			expect(game.ask_player_shoot(game.player1)).to eq("player1, where do you want to shoot? (e.g. 'A1')")
		end
	end

	
end

# def place_ship(ship, coordinate, direction)