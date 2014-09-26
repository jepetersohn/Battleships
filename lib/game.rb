class Game
	

	def initialize(player1="player1", player2="player2")
		@player1 = Player.new(player1)
		@player2 = Player.new(player2)
	end

	def player1
		@player1
	end

	def player2
		@player2
	end

	def ask_player_place_ship(player, ship)
		"#{player.name}, where do you want to place your #{ship.name} (e.g. 'A1')"

	end	

	def coordinates
		coordinates = STDIN.gets.chomp
	end

	def ask_player_ship_direction(player, ship)
		"#{player.name}, what direction do you want to place your #{ship.name} ('R' or 'D')"
	end

	def ask_player_shoot(player)
		"#{player.name}, where do you want to shoot? (e.g. 'A1')"
	end

	def direction
		direction = STDIN.gets.chomp
	end

	def pass_coordinates(player, ship, coordinate, direction)
		player.board.place_ship(ship, coordinate, direction)
	end

	def pass_shot(player, coordinate)
		player.board.shoot_at(coordinate)
	end

end

# def play_game(game_number)
# 	game = Game.new
# 	game.players.each do |player|
# 		player.ships.each do |ship|
# 			ask_player_place_ship(player, ship)
# 			ship_coordinates = gets.chomp
# 			board_fit?
#			ship.clash?
# 			player.board.place_ship(ship, ship_coordinates)
# 		end
# 	end