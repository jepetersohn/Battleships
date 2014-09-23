require 'player'

describe Player do 

	let (:player) { Player.new }
	let (:primary_board) { double :board }
	let (:tracking_board) { double :board }


	context "on initialize it should" do

		it 'have a primary board' do
			expect(player.primary_board?).to eq("PrimaryBoard.new")
		end

		it "have a tracking board" do
			expect(player.tracking_board?).to eq("TrackingBoard.new")
		end

	end

	
end