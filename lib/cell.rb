class Cell

	attr_reader :occupied, :miss, :hit

	def initialize
		@occupied = false
		@miss = false
		@hit = false
	end

	def place_ship
		@occupied = true
	end

	def be_shot
		@miss = true if !occupied
		@hit = true if occupied
	end


end