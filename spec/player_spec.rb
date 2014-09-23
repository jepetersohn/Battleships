require 'player'

describe Player do 

	let (:player) { Player.new }
	let (:primary_board) { double :board }
	let (:tracking_board) { double :board }
	let (:patrolboat) { double :ship }
	let (:battleship) { double :ship }


	context "on initialize it should" do

		it 'have a primary board' do
			expect(player.primary_board?).to eq("PrimaryBoard.new")
		end

		it "have a tracking board" do
			expect(player.tracking_board?).to eq("TrackingBoard.new")
		end

		it "should have an array of ships" do
			expect(player.ships).to eq([:patrolboat, :battleship])
		end

	end

	context "at the start of the game" do

		it "should be able place ships" do
			player.place_ship(:patrolboat)
			expect(player.ships).not_to include(:patrolboat)
		end
	end

	
end