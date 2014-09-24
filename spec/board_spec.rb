require 'board'

describe Board do

	let(:board) {Board.new}
	let(:cell) {double :cell}

	context "Upon initialize it" do

		it "should have a grid" do
			expect(board.grid).to_not be nil
		end

		it "should have cells" do
			expect(board.grid.empty?).not_to be true
		end

		it "should have 100 cells" do
			expect(board.grid.count).to eq(100)
		end	

	end	

	
end
