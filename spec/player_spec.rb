require 'player'

describe Player do 

	let (:player) { Player.new }
	let (:primary_board) { double :board }
	let (:tracking_board) { double :board }
	let (:ships) { double :ships }


	context "on initialize it should" do

		it 'have a primary board' do
			expect(player.primary_board?).to eq("PrimaryBoard.new")
		end

		it "have a tracking board" do
			expect(player.tracking_board?).to eq("TrackingBoard.new")
		end

		it "should have an array of ships" do
			expect(player.ships).to eq([])
		end

	end

	
end