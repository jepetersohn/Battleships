require 'player'

describe Player do 

	let (:player) { Player.new }
	let (:own_board) { double :own_board }
 	let (:opponent_board ) { double :opponent_board}
 	let (:patrolboat) { double :patrolboat }


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

		it "should have a patrolboat" do
			expect(player.ships).to include(:patrolboat)
		end

		it "should have a battleship" do
			expect(player.ships).to include(:battleship)
		end

		it "should have an aircraft carrier" do
			expect(player.ships).to include(:aircraftcarrier)
		end

		it "should have a submarine" do
			expect(player.ships).to include(:submarine)
		end

		it "should have a destroyer" do
			expect(player.ships).to include(:destroyer)
		end

	end

	context "at the start of the game" do

		it "should be able to tell board where to place ships" do
			allow(own_board).to receive(:place_ship).with(patrolboat, "C4", "R")
			expect(own_board).to receive(:place_ship).with(patrolboat, "C4", "R")
			player.place_ship(own_board, patrolboat, "C4", "R")
		end


		it "when player places ship it is removed from shipyard" do
			allow(own_board).to receive(:place_ship).with(:patrolboat, "C4", "R")
 			expect{player.place_ship(own_board, :patrolboat,"C4", "R")}.to change{player.ships.count}.by -1
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