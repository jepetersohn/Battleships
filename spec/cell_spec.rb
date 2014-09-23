require 'cell'

describe Cell do

	let(:cell) {Cell.new}

	context "upon initialize it" do

		it "should have empty status" do
			expect(cell.status).to be :empty
		end

		it "should have no ship" do
			expect(cell.ship).to eq(nil)
		end
	end
	context "during the game" do

		it "should change status when hit" do
			expect{cell.hit}.to change{cell.status}.to :hit
		end

		it "should change status when missed" do
			expect{cell.miss}.to change{cell.status}.to :miss
		end

		it "indicator should return 'X' when hit" do
			cell.hit
			expect(cell.indicator).to eq('X')
		end
	end
end
