class Player

	attr_accessor :patrolboat, :battleship, :submarine, :aircraftcarrier, :destroyer

	def initialize
		@own_board = Board.new
		@patrolboat = Ship.patrolboat
		@battleship = Ship.battleship
		@submarine = Ship.submarine
		@aircraftcarrier = Ship.aircraftcarrier
		@destroyer = Ship.destroyer
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

	def place_ship(ship, coordinate, direction)
		own_board.place_ship(ship, coordinate, direction)
		ships.delete(ship)
	end

	def shoot_at(opponent_board, coordinate)
	 	opponent_board.incoming_shot(coordinate)
	end 


end


