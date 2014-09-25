require 'player'

describe Player do 

	let (:player) { Player.new }
	let (:own_board) { double :own_board }
 	let (:opponent_board ) { double :opponent_board}
 	let (:ship) { double :ship }
 	let (:patrolboat) { Ship.patrolboat }


	context "on initialize it should" do

		it "should have a name" do
			expect(player.name).not_to be nil
		end

		it "have a own board" do
			expect(player.own_board).not_to be nil
		end

		it "should have 5 ships" do
			expect(player.ships.count).to eq(5)
		end

	end

	context "at the start of the game" do

		it "should be able to tell board where to place ships" do
			allow(player.own_board).to receive(:place_ship).with(patrolboat, "C4", "R")
			expect(player.own_board).to receive(:place_ship).with(patrolboat, "C4", "R")
			player.place_ship(patrolboat, "C4", "R")
		end
	end

	context "during the game" do

		it "should be able to shoot at a coordinate" do
			allow(opponent_board).to receive(:incoming_shot).with("C4")
			expect(opponent_board).to receive(:incoming_shot).with("C4")
			player.shoot_at(opponent_board, "C4")
	
		end

	end
	
end