class Ship

	def initialize(size=2, name=:ship, hits=0)
		@size = size
		@name = name
		@hits = hits
	end

	def size
		@size
	end

	def name
		@name
	end

	def hit_count
		@hits
	end

	def receive_shot
		raise "This ship can't be hit again(its sunk!)" if @hits >= @size
		@hits += 1
	end

	def sunk?
		hit_count == size ? true : false
	end

	def self.aircraftcarrier
		new(5, :aircraftcarrier)
	end

	def self.battleship
		new(4, :battleship)
	end
	
	def self.submarine
		new(3, :submarine)
	end	

	def self.destroyer
		new(3, :destroyer)
	end

	def self.patrolboat
		new(2, :patrolboat)
	end

end