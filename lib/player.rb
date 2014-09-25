class Player

	attr_accessor :patrolboat, :battleship, :submarine, :aircraftcarrier, :destroyer
	attr_accessor :ships, :board

	def initialize
		@board = Board.new
		@patrolboat = Ship.patrolboat
		@battleship = Ship.battleship
		@submarine = Ship.submarine
		@aircraftcarrier = Ship.aircraftcarrier
		@destroyer = Ship.destroyer
		@ships = [:patrolboat, :battleship, :submarine, :aircraftcarrier, :destroyer]
	end
end


