class Player


	def initialize(name="Unknown")
		@own_board = Board.new
		@name = name
		@ships = [:patrolboat, :battleship, :submarine, :aircraftcarrier, :destroyer]
	end

	def own_board
		@own_board
	end

	def name
		@name
	end

	def ships
		@ships
	end

	def patrolboat
		@ships[0]
	end

	def place_ship(ship)
		ships.delete(ship)
	end

	def shoot_at(opponent_board, at_coordinate)
		opponent_board.grid[at_coordinate].incoming_shot
	end 

end


