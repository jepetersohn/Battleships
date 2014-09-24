class Board

	# attr_reader =	:grid

	def initialize
		@grid = Array.new(100, Cell.new)
	end	

	def grid
		@grid
	end
		
end