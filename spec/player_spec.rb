require 'player'

describe Player do 

	let (:player) { Player.new }
	let (:own_board) { double :board, grid: grid }
	let (:patrolboat) { double :ship }
	let (:battleship) { double :ship }
	let (:cell) { double :cell }
	let (:grid) { double :grid }
	let (:opponent_board ) { double :board, grid: grid}


	context "on initialize it should" do

		it 'have a own board' do
			expect(player.own_board?).to eq(:board_substitute)
		end

		it "should have an array of ships" do
			expect(player.ships).to eq([:patrolboat, :battleship])
		end

	end

	context "at the start of the game" do

		it "should be able to place part of a ship on own board" do
			expect(grid).to receive(:[]).with("C4").and_return(cell)
			expect(cell).to receive(:ship).with(:patrolboat)
			player.place_ship(own_board, "C4", :patrolboat)
			expect(player.ships).not_to include(:patrolboat)
		end

		# write test for method to loop place_ship * ship length
	end

	context "during the game" do

		it "should be able to shoot at a coordinate" do
			expect(grid).to receive(:[]).with("C4").and_return(cell)
			expect(cell).to receive(:incoming_shot)
			player.shoot_at(opponent_board, "C4")
		end
	end
	
end