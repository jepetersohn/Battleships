class Player

	def initialize
		@primary_board = "PrimaryBoard.new"
		@tracking_board = "TrackingBoard.new"
		@ships = []
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

end