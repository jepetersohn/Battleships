class Player

	def initialize
		@primary_board = "PrimaryBoard.new"
		@tracking_board = "TrackingBoard.new"
		@ships = [:patrolboat, :battleship]
	end

	def primary_board?
		@primary_board
	end

	def tracking_board?
		@tracking_board
	end

	def ships
		@ships
	end

	def place_ship(ship)
		# ship.add(@primary_board)
		@ships.delete(ship)
	end

end