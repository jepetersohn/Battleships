class Cell

	def initialize
		@occupied = false
		@shot = false
	end

	def occupied?
		@occupied
	end

	def place_ship
		@occupied = true
	end

	def shot?
		@shot
	end

	def be_shot
		@shot = true
	end

end