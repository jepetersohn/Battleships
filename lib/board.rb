class Board

	attr_reader :grid

	def initialize
		@grid = Array.new(10).map! {Array.new(10).map! {Cell.new}}
	end	

  def place_ship(ship, coordinates, direction)
      x, y = coord_converter(coordinates)
      ship.size.times do 
        put_ship_on_grid(ship, x, y )
        direction == "R" ? x += 1 : y += 1
      end
  end

  def put_ship_on_grid(ship,x,y )
    grid[x][y].ship = ship
    # grid[x][y].status = :occupied
  end

	def coord_converter(coordinates)	
    [coordinates.split('', 2)[0].upcase.ord - 65, coordinates.split('', 2)[1].to_i - 1]
	end

  def shoot_at(coordinates)
    x,y = coord_converter(coordinates)
    grid[x][y].incoming_shot
  end
end


