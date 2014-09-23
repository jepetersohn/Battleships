require 'cell'

describe Cell do 

	let(:cell) { Cell.new }
	
	context "on initialize it should" do
		
		it "be unoccupied" do
			expect(cell).to_not be_occupied
		end

		it "should not be shot" do
			expect(cell).to_not be_shot
		end

	end

	context "should be able to be changed to" do
		
		it "occupied when receives place ship" do
			expect{cell.place_ship}.to change{cell.occupied?}.to true
		end

		it "receive message to be shot" do
			expect{cell.be_shot}.to change{cell.shot?}.to true
		end	

	end

end