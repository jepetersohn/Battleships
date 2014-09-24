class Board

	# attr_reader =	:grid

	def initialize
		@grid = Array.new(10).map! {Array.new(10).map! {Cell.new}}
	end	

	def grid
		@grid
	end
		
end


