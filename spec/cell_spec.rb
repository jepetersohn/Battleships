require 'cell'

describe Cell do 

	let(:cell) { Cell.new }
	
	context "on initialize it should" do
		
		it "be unoccupied" do
			expect(cell.occupied).to be false
		end

		it "should not be missed" do
			expect(cell.miss).to be false
		end

	end

	context "should be able to be changed to" do
		
		it "occupied when receives place ship" do
			expect{cell.place_ship}.to change{cell.occupied}.to true
		end

		it "miss when unoccupied and shot" do
			expect{cell.be_shot}.to change{cell.miss}.to true
		end	

		it "hit when occupied and shot" do
			cell.place_ship
			expect{cell.be_shot}.to change{cell.hit}.to true
		end
		
	end

end