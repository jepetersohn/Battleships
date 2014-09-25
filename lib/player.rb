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

	def place_ship(own_board, ship, coordinate, direction)
		own_board.place_ship(ship, coordinate, direction)
		ships.delete(ship)
	end

	 def shoot_at(opponent_board, coordinate)
	 	opponent_board.incoming_shot(coordinate)
	 end 

end


