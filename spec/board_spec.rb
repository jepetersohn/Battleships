require 'board'

describe Board do

	let(:board) {Board.new}
	let(:cell) {double :cell}
	let(:ship) {double :ship}
	let(:patrolboat) {double :patrolboat, size: 2 }
	let(:battleship) {double :battleship, size: 4 }

	context "Upon initialize it" do

		it "should have a grid" do
			expect(board.grid).to_not be nil
		end

		it "should have cells" do
			expect(board.grid.empty?).not_to be true
		end

		it "should have 100 cells" do
			expect(board.grid.flatten.count).to eq(100)
		end	

		it "should give coordinates to cells" do
			expect(board.grid[9][9]).to_not be nil
		end
	end	

	context "During the game it" do

		it "should know how to convert coordinates" do
			expect(board.coord_check("A1")).to eq [0, 0]
		end



		it "should be able to receive ship starting coordinate" do
			board.place_ship(patrolboat, "A1", "R")
			expect(board.grid[0][0].ship).to eq(patrolboat)
		end

		it "should be able to place patrolboat coordinates" do
			board.place_ship(patrolboat, "A1", "R")
			expect(board.grid[0][0].ship).to eq(patrolboat)
			expect(board.grid[1][0].ship).to eq(patrolboat)
		end

		it "should be able to place battleship coordinates" do
			board.place_ship(battleship, "A1", "D")
			expect(board.grid[0][0].ship).to eq(battleship)
			expect(board.grid[0][1].ship).to eq(battleship)
			expect(board.grid[0][2].ship).to eq(battleship)
			expect(board.grid[0][3].ship).to eq(battleship)
		end	
	end
end
