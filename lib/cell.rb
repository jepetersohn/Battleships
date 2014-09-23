class Cell

	attr_reader :occupied, :shot

	def initialize
		@occupied = false
		@shot = false
	end

	def place_ship
		@occupied = true
	end

	def be_shot
		@shot = true
	end

end