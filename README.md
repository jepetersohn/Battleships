Battle Ships
=============

Battleships (or Battleship) is a game where each player has a board upon which they can place a number of ships. The boards are 10x10 two dimensional grid.

##Rules of the Game

After each player has placed their ships on their own board they take turns to shoot on the opponents board. 
In each round, each player takes a turn to announce a target square in the opponent's grid which is to be shot at.
The opponent announces whether or not the square is occupied by a ship, and if it is a hit they mark this on their own primary grid. 
The attacking player notes the hit or miss on their own tracking grid, in order to build up a picture of the opponent's fleet.

When all of one player's ships have been hit the game finishes and the player who has ships remaining is the winner.


##CRC Modelling

Player (ship, board)
-------------------
* places ships on board
* shoots at the board

Ship (board, player, square)
---------------------------
* can occupy a square   
* can be hit 			
* can sink 				

Square (ship, board)
--------------------
* knows if it has a ship 				   
* knows when it is shot but empty (miss)  
* knows when it is shot and has a ship (hit) 
* knows if it is empty 

Board (player, square, ship)
---------------------------
* has squares
* reports victory
* reports when a ship is sunk
* tells a square when it is hit
* tells a square when it it has a ship
* displays a hit
* displays a miss
