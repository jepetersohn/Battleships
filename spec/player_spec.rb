require 'player'

describe Player do 

	let (:player) { Player.new }
	let (:own_board) { double :board }
	let (:cell) { double :cell }
	let (:grid) { double :grid}
 	let (:opponent_board ) { double :board, grid: grid}


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
			expect{player.place_ship(:patrolboat)}.to change{player.ships.count}.by -1
		end

	end

	context "during the game" do

		it "should be able to shoot at a coordinate" do
			allow(grid).to receive(:[]).with("C4").and_return(cell)
			expect(cell).to receive(:incoming_shot)
			player.shoot_at(opponent_board, "C4")
		end

	end
	
end