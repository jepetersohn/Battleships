class Player

	def initialize(board: :board_substitute)
		@own_board = board
		@ships = [:patrolboat, :battleship]
	end

	def own_board?
		@own_board
	end

	def ships
		@ships
	end

	def place_ship(own_board, at_coordinate, ship)
		own_board.grid[at_coordinate].ship(ship)
		@ships.delete(ship)
	end

	# method to loop place_ship method * ship length

	def shoot_at(opponent_board, at_coordinate)
		opponent_board.grid[at_coordinate].incoming_shot
	end 

end


