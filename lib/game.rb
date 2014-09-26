class Game
	

	def initialize
		@player1 = Player.new
		@player2 = Player.new
	end

	def player1
		@player1
	end

	def player2
		@player2
	end

	def ask_player_place_ship(player, ship)
		"#{player.name}, where do you want to place your #{ship.name} (e.g. 'A1') "
	end	

	def ship_coordinates
		ship_coordinates = gets.chomp
	end




end

# def play_game(game_number)
# 	game = Game.new
# 	game.players.each do |player|
# 		player.ships.each do |ship|
# 			ask_player_place_ship(player, ship)
# 			ship_coordinates = gets.chomp
# 			player.board.place_ship(ship, ship_coordinates)
# 		end
# 	end