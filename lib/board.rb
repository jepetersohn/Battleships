class Board

	COLUMNS = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]

	# attr_reader =	:grid

	def initialize
		@grid = Array.new(10).map! {Array.new(10).map! {Cell.new}}
	end	

	def grid
		@grid
	end
	
	def place_ship(ship, coordinates, direction)
		cells_to_fill = ship.size
		column, row = coord_check(coordinates)
		while cells_to_fill > 0
			if direction == "R"
				grid[column][row].ship = ship
				grid[column][row].status = :occupied
				column += 1
			end
			if direction == "D"
				grid[column][row].ship = ship
				grid[column][row].status = :occupied
				row += 1
			end
			cells_to_fill -= 1
	end
	end

	def coord_check(coordinates)
		coordinates = coordinates.scan(/\d+|\D+/)
		return COLUMNS.index(coordinates[0]), coordinates[1].to_i - 1
	end

end


